#' @title Get all GitHub repositories for a user
#' @description Get all the repository information for a GitHub account
#'
#' @param username GitHub username to pull
#' @param per_page Number of repos to try to pull per page.
#' Default is maximum of 100
#' @param ... arguments passed to \code{\link{gh}}
#'
#' @return List of package information
#' @export
#' @importFrom gh gh
get_all_repos = function(username = "neuroconductor",
                         per_page = 100, ...) {
  page = 1
  my_repos <- gh::gh("GET /users/:username/repos",
                 username = username,
                 page = page,
                 per_page = per_page,
                 ...)
  n_repos = length(my_repos)
  reps = my_repos
  page = page + 1
  while (n_repos >= per_page) {
    my_repos <- gh::gh("GET /users/:username/repos",
                   username = username,
                   page = page,
                   per_page = per_page)
    # reps = c(reps, as.list(my_repos))
    reps = c(reps, my_repos)
    page = page + 1
    n_repos = length(my_repos)
  }
  return(reps)
}
