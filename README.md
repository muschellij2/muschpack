
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
df = r_package_repos(username = "muschellij2")
mine = df %>% filter(!fork & r_repo)
mine = mine %>% 
  filter(!grepl("^test", bare)) %>% 
  arrange(desc(open_issues_count), bare)
mine$issues_page = paste0("[", mine$open_issues_count, "](", 
                          mine$issues_page, ")")
mine = mine %>% 
  select(gh_link, travis_badge, 
         appveyor_badge, issues_page, vignettes, tests)
mine = mine %>% 
  mutate(
    vignettes = ifelse(vignettes, "Yes", ""),
    tests = ifelse(tests, "<Icon name='checkmark' color='green' size='medium'/>", ""))

colnames(mine) = c("GitHub Link", "Travis Status", 
                   "Appveyor Status", "Number of Issues",
                   "Vignettes Folder", "Tests Folder")
knitr::kable(mine, escape = FALSE)
```

| GitHub Link                                                           | Travis Status                                                                                                                                           | Appveyor Status                                                                                                                                                                                    | Number of Issues                                             | Vignettes Folder | Tests Folder                                         |
|:----------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------|:-----------------|:-----------------------------------------------------|
| [clusterRundown](https://github.com/muschellij2/clusterRundown)       | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/clusterRundown.svg?branch=master)](https://travis-ci.org/muschellij2/clusterRundown)       | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/clusterRundown?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/clusterRundown)       | [1](https://github.com/muschellij2/clusterRundown/issues)    |                  |                                                      |
| [afnir](https://github.com/muschellij2/afnir)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/afnir.svg?branch=master)](https://travis-ci.org/muschellij2/afnir)                         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/afnir?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/afnir)                         | [0](https://github.com/muschellij2/afnir/issues)             |                  |                                                      |
| [brainR](https://github.com/muschellij2/brainR)                       | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/brainR.svg?branch=master)](https://travis-ci.org/muschellij2/brainR)                       | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/brainR?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/brainR)                       | [0](https://github.com/muschellij2/brainR/issues)            |                  |                                                      |
| [checkout](https://github.com/muschellij2/checkout)                   | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/checkout.svg?branch=master)](https://travis-ci.org/muschellij2/checkout)                   | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/checkout?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/checkout)                   | [0](https://github.com/muschellij2/checkout/issues)          |                  |                                                      |
| [cifti](https://github.com/muschellij2/cifti)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/cifti.svg?branch=master)](https://travis-ci.org/muschellij2/cifti)                         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/cifti?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/cifti)                         | [0](https://github.com/muschellij2/cifti/issues)             | Yes              |                                                      |
| [ct.malf.templates](https://github.com/muschellij2/ct.malf.templates) | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/ct.malf.templates.svg?branch=master)](https://travis-ci.org/muschellij2/ct.malf.templates) | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/ct.malf.templates?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/ct-malf-templates) | [0](https://github.com/muschellij2/ct.malf.templates/issues) | Yes              |                                                      |
| [dcm2niir](https://github.com/muschellij2/dcm2niir)                   | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/dcm2niir.svg?branch=master)](https://travis-ci.org/muschellij2/dcm2niir)                   | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/dcm2niir?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/dcm2niir)                   | [0](https://github.com/muschellij2/dcm2niir/issues)          | Yes              |                                                      |
| [dcmtk](https://github.com/muschellij2/dcmtk)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/dcmtk.svg?branch=master)](https://travis-ci.org/muschellij2/dcmtk)                         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/dcmtk?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/dcmtk)                         | [0](https://github.com/muschellij2/dcmtk/issues)             |                  | <Icon name='checkmark' color='green' size='medium'/> |
| [dhs](https://github.com/muschellij2/dhs)                             | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/dhs.svg?branch=master)](https://travis-ci.org/muschellij2/dhs)                             | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/dhs?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/dhs)                             | [0](https://github.com/muschellij2/dhs/issues)               |                  |                                                      |
| [diffr](https://github.com/muschellij2/diffr)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/diffr.svg?branch=master)](https://travis-ci.org/muschellij2/diffr)                         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/diffr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/diffr)                         | [0](https://github.com/muschellij2/diffr/issues)             |                  |                                                      |
| [drammsr](https://github.com/muschellij2/drammsr)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/drammsr.svg?branch=master)](https://travis-ci.org/muschellij2/drammsr)                     | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/drammsr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/drammsr)                     | [0](https://github.com/muschellij2/drammsr/issues)           |                  |                                                      |
| [dtitk](https://github.com/muschellij2/dtitk)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/dtitk.svg?branch=master)](https://travis-ci.org/muschellij2/dtitk)                         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/dtitk?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/dtitk)                         | [0](https://github.com/muschellij2/dtitk/issues)             |                  |                                                      |
| [ENARSC2015](https://github.com/muschellij2/ENARSC2015)               | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/ENARSC2015.svg?branch=master)](https://travis-ci.org/muschellij2/ENARSC2015)               | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/ENARSC2015?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/ENARSC2015)               | [0](https://github.com/muschellij2/ENARSC2015/issues)        | Yes              |                                                      |
| [extrantsr](https://github.com/muschellij2/extrantsr)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/extrantsr.svg?branch=master)](https://travis-ci.org/muschellij2/extrantsr)                 | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/extrantsr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/extrantsr)                 | [0](https://github.com/muschellij2/extrantsr/issues)         | Yes              |                                                      |
| [freesurfer](https://github.com/muschellij2/freesurfer)               | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/freesurfer.svg?branch=master)](https://travis-ci.org/muschellij2/freesurfer)               | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/freesurfer?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/freesurfer)               | [0](https://github.com/muschellij2/freesurfer/issues)        | Yes              |                                                      |
| [fslr](https://github.com/muschellij2/fslr)                           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/fslr.svg?branch=master)](https://travis-ci.org/muschellij2/fslr)                           | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/fslr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/fslr)                           | [0](https://github.com/muschellij2/fslr/issues)              | Yes              |                                                      |
