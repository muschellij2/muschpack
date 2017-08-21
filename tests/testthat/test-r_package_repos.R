test_that("r_package_repos", {
  testthat::expect_success(
    expr = {
      r_package_repos(username = "muschellij2")
      })
})