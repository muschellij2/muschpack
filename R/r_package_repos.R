
#' R Package Repositories
#'
#' @return A \code{data.frame}
#' @export
#' @importFrom neuroc.deps get_all_repos
r_package_repos = function(...) {
  neuroc.deps::get_all_repos()
}