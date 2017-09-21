#' Get Repository Contents
#'
#' Retrieves Github Repository Contents/filenames
#'
#' @param repo Github repository in the order or user/repo
#' @param ... arguments passed to \code{\link{gh}}
#'
#' @return A list or a character vector of files
#' @export
#'
#' @examples
#' repo_contents("muschellij2/fslr")
repo_contents = function(repo, ...) {
  string = paste0("GET /repos/", repo, "/contents/")
  res = try(
    gh::gh(string, ...),
    silent = TRUE)
  if (inherits(res, "try-error")) {
    res = list()
  }
  if (is.character(res)) {
    if (all(res == "")) {
      res = NULL
    } else {
      res = list(res)
    }
  }
  return(res)
}

#' @export
#' @rdname repo_contents
repo_files = function(repo, ...) {
  res = repo_contents(repo = repo, ...)
  if (length(res) == 0) {
    files = NA
  } else {
    files = vapply(res, function(x) {
      if ("name" %in% names(x)) {
        return(x$name)
      } else {
        return(NA_character_)
      }
    },
    FUN.VALUE = NA_character_)
  }
  return(files)
}

