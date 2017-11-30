#' Package Table for Printing
#'
#' @param df A \code{data.frame} from \code{r_package_repos} that has
#' been subset to what you want
#' @param make_check Make the \code{TRUE/FALSE} into checkmarks
#'
#' @return A \code{data.frame} that works well with \code{kable}
#' @export
#'
package_table = function(df, make_check = TRUE) {
  mine = df %>%
    arrange(desc(open_issues_count), bare)
  mine$issues_page = paste0("[", mine$open_issues_count, "](",
                            mine$issues_page, ")")

  mine = add_package_info(mine)
  make_yes = function(x){
    ifelse(x, '<i class="fa fa-check"></i>', '')
  }
  if (make_check) {
    mine = mine %>%
      mutate(
        vignettes = make_yes(vignettes),
        tests = make_yes(tests))
  }

  mine = mine %>%
    select(gh_link, travis_badge,
           appveyor_badge, issues_page, vignettes, tests,
           version, cran_badge, dl_badge)
  colnames(mine) = c("GitHub Link", "Travis Status",
                     "Appveyor Status", "Number of Issues",
                     "Vignettes Folder", "Tests Folder",
                     "GH Version", "CRAN", "Downloads")
  return(mine)
}
