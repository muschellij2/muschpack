#' Status of Build from Travis SVG
#'
#' @param url URL(s) of SVG badges from Travis
#'
#' @return A character vector build statuses.
#' @export
#'
#' @importFrom utils head
#' @importFrom xml2 read_xml xml_ns_strip xml_find_all xml_text
#' @importFrom httr GET status_code content
#' @examples
#' url = "https://travis-ci.org/muschellij2/aal.svg?branch=master"
#' travis_svg_status(url)
#' # use .com vs. .org
#' com_url = "https://travis-ci.com/muschellij2/aal.svg?branch=master"
#' travis_svg_status(com_url)
#'
travis_svg_status = function(url) {

  results = lapply(url, function(u) {
    res = httr::GET(u)
    if (httr::status_code(res) >= 400) {
      return("unknown")
    }
    cr = httr::content(res, as = "text", encoding = "UTF-8")
    xml = xml2::read_xml(cr)
    xml = xml2::xml_ns_strip(xml)
    svgs = xml2::xml_find_all(xml, xpath = "//svg//g//text")
    builds = xml2::xml_text(svgs)
    builds = unique(builds)
    builds = builds[ !builds %in% "build"]
    if (length(builds) == 0) {
      return("unknown")
    }
    return(builds)
  })
  names(results) = url

  # all options c("unknown", "failing", "passing", "error")
  # "failing" "passing" "error"
  l = sapply(results, length)
  ind = l != 1
  if (any(ind)) {
    warning("Some have multiple outputs! Taking first.  For example:")
    run_ind = head(which(ind))
    results[run_ind]
  }
  res = sapply(results, function(x) x[1])
  res[is.na(res)] = "unknown"
  return(res)
}
