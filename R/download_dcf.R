#' Download DESCRIPTION files
#'
#' @return A list of the files and the description objects
#' @param urls URLs for description files
#' @param ... additional to arguments to \code{GET}
#' @export
#' @importFrom httr GET write_disk warn_for_status
#' @importFrom desc description
download_dcf = function(urls) {
  dl = pbapply::pblapply(urls, function(x, ...) {
    if (is.na(x)) {
      return(NA_character_)
    }
    tfile = tempfile(fileext = "_DESCRIPTION")
    res = httr::GET(url = x, httr::write_disk(path = tfile), ...)
    httr::warn_for_status(res)
    if (file.exists(tfile)) {
      return(tfile)
    } else {
      return(NA_character_)
    }
  })
  dcfs = lapply(dl, function(x) {
    if (is.na(x)) {
      return(NA_character_)
    }
    desc::description$new(x)
    })
  L = list(files = dl,
           dcfs = dcfs)
  return(L)

}