
#' R Package Repositories
#'
#' @return A \code{data.frame}
#' @export
#' @importFrom neuroc.deps get_all_repos
#' @importFrom pbapply pbsapply
#' @importFrom ghtravis get_remote_package_dcf
#' @importFrom data.table rbindlist
#' @importFrom dplyr data_frame as_data_frame "%>%"
#' @importFrom tidyr nest
r_package_repos = function(...) {
  username = "muschellij2"
  repos = neuroc.deps::get_all_repos(username = username)
  # repos = neuroc.deps::get_all_repos(...)
  forks = vapply(repos, FUN = `[[`, "fork", FUN.VALUE = logical(1))
  remotes = vapply(repos, `[[`, "full_name", FUN.VALUE = character(1))
  names(repos) = remotes
  urls = paste0("https://travis-ci.org/", remotes, ".svg?branch=master")
  dd = pbapply::pbsapply(remotes, ghtravis::has_remote_dcf)

  df = data_frame(
    remote = remotes,
    r_repo = dd
  )
  repo_info = lapply(repos, function(x) as_data_frame(t(unlist(x))))
  repo_info = data.table::rbindlist(repo_info, fill = TRUE)
  repo_info = as_data_frame(repo_info)

  df = cbind(df, repo_info)
  cn = colnames(repo_info )
  cn = setdiff(cn, c("fork", "language"))
  df = df %>% tidyr::nest(one_of(cn), .key = repo_info)
  return(df)
}

#
#   res = pbapply::pblapply(urls, httr::HEAD, httr::content_type("image/svg+xml"))
#
# }