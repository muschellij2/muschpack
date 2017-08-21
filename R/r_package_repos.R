#' Package Repository Information
#'
#' Grabs all repository information from GitHub
#'
#' @return A nested \code{data.frame} of repository information
#' @param username GitHub username
#' @param ... additional to arguments to \code{get_all_repos}
#' @export
#' @importFrom neuroc.deps get_all_repos
#' @importFrom pbapply pbsapply
#' @importFrom ghtravis get_remote_package_dcf
#' @importFrom data.table rbindlist
#' @importFrom dplyr data_frame as_data_frame "%>%" one_of
#' @importFrom tidyr nest
r_package_repos = function(username = "muschellij2", ...) {
  repos = neuroc.deps::get_all_repos(username = username, ...)
  remotes = vapply(repos, `[[`, "full_name", FUN.VALUE = character(1))
  names(repos) = remotes
  dd = pbapply::pbsapply(remotes, ghtravis::has_remote_dcf)

  df = dplyr::data_frame(
    remote = remotes,
    r_repo = dd
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
  df$travis = paste0("https://travis-ci.org/", df$remote)

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
    df$remote)

  df$appveyor_badge = paste0(
    "[![AppVeyor Build Status](",
    "https://ci.appveyor.com/api/projects/status/github/",
    df$remote, "?branch=master&svg=true)](",
    df$appveyor, ")")
  return(df)
}



