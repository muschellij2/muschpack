make_badge = function(badge_name = "", href, src) {
  img <- paste0("![", badge_name, "](", src, ")")
  link <- paste0("[", img, "](", href, ")")
  link
}

make_cran_badge = function(pkg) {

  # src <- paste0("http://www.r-pkg.org/badges/version/", pkg)
  src <- paste0("http://www.r-pkg.org/badges/version-ago/", pkg)
  href <- paste0("https://cran.r-project.org/package=", pkg)
  make_badge("CRAN status", href = href, src = src)
}

make_dl_badge = function(pkg) {
  href = paste0(
    "http://cran.rstudio.com/web/packages/", pkg, "/index.html")
  src = paste0("http://cranlogs.r-pkg.org/badges/", pkg)
  make_badge("CRANlogs downloads", href = href, src = src)
}

#' Package Repository Information
#'
#' Grabs all repository information from GitHub
#'
#' @return A nested \code{data.frame} of repository information
#' @param username GitHub username
#' @param travis_type Are you using Travis \code{.com} or \code{.org}?
#' @param ... additional to arguments to \code{get_all_repos}
#' @export
#' @importFrom pbapply pbsapply
#' @importFrom data.table rbindlist
#' @importFrom dplyr data_frame as_data_frame "%>%" one_of
#' @importFrom tidyr nest
r_package_repos = function(
  username = "muschellij2",
  travis_type = c("org", "com"), ...) {
  repos = get_all_repos(username = username, ...)
  remotes = vapply(repos, `[[`, "full_name", FUN.VALUE = character(1))
  names(repos) = remotes
  all_contents = pbapply::pblapply(remotes, repo_contents)
  all_files = lapply(all_contents, repo_filenames)
  # all_files = pbapply::pblapply(remotes, repo_files)
  # all_files = pbapply::pblapply(remotes, function(x) {
  #   print(x)
  #   repo_files(x)
  #   })
  dd = sapply(all_files, function(x){
    "DESCRIPTION" %in% x
  })

  which_dd = sapply(all_files, function(x){
    x %in% "DESCRIPTION"
  })

  dcf_urls = mapply(function(x, y, z) {
    if (!z) {
      return(NA_character_)
    }
    x = x[[which(y)]]$download_url
    if (is.null(x)) {
      return(NA_character_)
    }
    x
  }, all_contents, which_dd, dd)

  vignettes = sapply(all_files, function(x){
    "vignettes" %in% x
  })

  tests = sapply(all_files, function(x){
    "tests" %in% x
  })

  df = dplyr::data_frame(
    remote = remotes,
    r_repo = dd,
    dcf_url = dcf_urls,
    tests = tests,
    vignettes = vignettes
  )



  repo_info = lapply(repos, function(x) {
    dplyr::as_data_frame(t(unlist(x)))
  })
  repo_info = data.table::rbindlist(repo_info, fill = TRUE)
  repo_info = dplyr::as_data_frame(repo_info)

  df = cbind(df, repo_info)
  cn = colnames(repo_info)
  cn = setdiff(cn, c("fork", "language", "open_issues_count"))
  df = df %>% tidyr::nest(dplyr::one_of(cn), .key = repo_info)
  df$fork = as.logical(df$fork)
  df$open_issues_count = as.numeric(df$open_issues_count)
  travis_type = match.arg(travis_type)

  df$travis = paste0("https://travis-ci.",
                     travis_type, "/",
                     df$remote)

  df$travis_badge = paste0(
    "[![Travis-CI Build Status](",
    df$travis, ".svg?branch=master)](",
    df$travis, ")")

  df$bare = vapply(strsplit(df$remote, "/"), function(x) {
    x[length(x)]
  }, FUN.VALUE = character(1))

  df$gh_repo = paste0("https://github.com/",
                      df$remote)
  df$issues_page = paste0(df$gh_repo, "/issues")
  df$gh_link = paste0(
    "[", df$bare, "](", df$gh_repo, ")")

  df$appveyor = paste0(
    "https://ci.appveyor.com/project/",
    gsub("[.]", "-", df$remote)
  )

  df$cran_badge = make_cran_badge(pkg = df$bare)
  df$dl_badge = make_dl_badge(pkg = df$bare)

  df$appveyor_badge = paste0(
    "[![AppVeyor Build Status](",
    "https://ci.appveyor.com/api/projects/status/github/",
    gsub("[.]", "-", df$remote),
    "?branch=master&svg=true)](",
    df$appveyor, ")")
  return(df)
}


#' Add R Package Information
#'
#' @param df A data.frame from \code{\link{r_package_repos}}
#'
#' @return A data.frame with additional package information
#' @export
add_package_info = function(df) {

  dcf_info = download_dcf(df$dcf_url)

  get_field = function(field) {
    sapply(dcf_info$dcfs, function(x) {
      if (inherits(x, "description")) {
        x = x$get(field)
        x = unname(x)
      } else {
        x = NA
      }
      return(x)
    })
  }
  df$version = get_field("Version")
  df$package_name = get_field("Package")
  df$date = get_field("Date")

  df$gh_link = paste0(
    "[", df$package_name, "](", df$gh_repo, ")")

  return(df)
}