
[![Travis-CI Build Status](https://travis-ci.org/muschellij2/muschpack.svg?branch=master)](https://travis-ci.org/muschellij2/muschpack) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/muschpack?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/muschpack)

<!-- README.md is generated from README.Rmd. Please edit that file -->
muschpack
=========

The `muschpack` package: Provides a build status for all John 'Muschelli' 'GitHub' packages.

Installation
------------

You can install muschpack from github with:

``` r
# install.packages("devtools")
devtools::install_github("muschellij2/muschpack")
```

Package Check Report
====================

``` r
library(muschpack)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
df = r_package_repos(username = "neuroconductor-devel")
mine = df %>% filter(!fork & r_repo)
mine = mine %>% 
  filter(!grepl("^test", bare)) %>% 
  arrange(desc(open_issues_count), bare)
mine$issues_page = paste0("[", mine$open_issues_count, "](", 
                          mine$issues_page, ")")
mine = mine %>% 
  select(gh_link, travis_badge, 
         appveyor_badge, issues_page, vignettes, tests)
make_yes = function(x){
  ifelse(x, '<i class="fa fa-check"></i>', '')
}
mine = mine %>% 
  mutate(
    vignettes = make_yes(vignettes),
    tests = make_yes(tests))

colnames(mine) = c("GitHub Link", "Travis Status", 
                   "Appveyor Status", "Number of Issues",
                   "Vignettes Folder", "Tests Folder")
knitr::kable(mine)
```

| GitHub Link                                            | Travis Status                                                                                                                                     | Appveyor Status                                                                                                                                                                              | Number of Issues                                          | Vignettes Folder            | Tests Folder |
|:-------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------------------------------------------|:----------------------------|:-------------|
| [cifti](https://github.com/neuroconductor-devel/cifti) | [![Travis-CI Build Status](https://travis-ci.org/neuroconductor-devel/cifti.svg?branch=master)](https://travis-ci.org/neuroconductor-devel/cifti) | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/neuroconductor-devel/cifti?branch=master&svg=true)](https://ci.appveyor.com/project/neuroconductor-devel/cifti) | [0](https://github.com/neuroconductor-devel/cifti/issues) | <i class="fa fa-check"></i> |              |
