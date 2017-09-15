#' Determine if GitHub Repository Has a file
#'
#' @param repo Github repository in the order or user/repo
#' @param file file to check if exists
#'
#' @return A character
#' @export
#'
#' @examples
#' repo_has_file("muschellij2/fslr", "DESCRIPTION")
repo_has_file = function(repo, file = "DESCRIPTION") {
  if (length(file) > 1) {
    ind = vapply(file, repo_has_file, FUN.VALUE = logical(1))
    return(ind)
  }
  string = paste0("GET /repos/", repo, "/contents/", file)
  res = try(
    gh::gh(string),
    silent = TRUE)
  return(!inherits(res, "try-error"))
}

#' @rdname repo_has_file
#' @export
repo_has_description = function(repo) {
  res = repo_has_file(repo, file = "DESCRIPTION")
  return(res)
}