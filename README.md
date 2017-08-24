
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
         appveyor_badge, issues_page)
colnames(mine) = c("GitHub Link", "Travis Status", 
                   "Appveyor Status", "Number of Issues")
knitr::kable(mine)
```

| GitHub Link                                                           | Travis Status                                                                                                                                           | Appveyor Status                                                                                                                                                                                    | Number of Issues                                             |
|:----------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------|
| [clusterRundown](https://github.com/muschellij2/clusterRundown)       | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/clusterRundown.svg?branch=master)](https://travis-ci.org/muschellij2/clusterRundown)       | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/clusterRundown?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/clusterRundown)       | [1](https://github.com/muschellij2/clusterRundown/issues)    |
| [neurocInstall](https://github.com/muschellij2/neurocInstall)         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/neurocInstall.svg?branch=master)](https://travis-ci.org/muschellij2/neurocInstall)         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/neurocInstall?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/neurocInstall)         | [1](https://github.com/muschellij2/neurocInstall/issues)     |
| [papayaWidget](https://github.com/muschellij2/papayaWidget)           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/papayaWidget.svg?branch=master)](https://travis-ci.org/muschellij2/papayaWidget)           | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/papayaWidget?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/papayaWidget)           | [1](https://github.com/muschellij2/papayaWidget/issues)      |
| [processVISION](https://github.com/muschellij2/processVISION)         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/processVISION.svg?branch=master)](https://travis-ci.org/muschellij2/processVISION)         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/processVISION?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/processVISION)         | [1](https://github.com/muschellij2/processVISION/issues)     |
| [spm12r](https://github.com/muschellij2/spm12r)                       | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/spm12r.svg?branch=master)](https://travis-ci.org/muschellij2/spm12r)                       | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/spm12r?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/spm12r)                       | [1](https://github.com/muschellij2/spm12r/issues)            |
| [WhiteStripe](https://github.com/muschellij2/WhiteStripe)             | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/WhiteStripe.svg?branch=master)](https://travis-ci.org/muschellij2/WhiteStripe)             | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/WhiteStripe?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/WhiteStripe)             | [1](https://github.com/muschellij2/WhiteStripe/issues)       |
| [afnir](https://github.com/muschellij2/afnir)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/afnir.svg?branch=master)](https://travis-ci.org/muschellij2/afnir)                         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/afnir?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/afnir)                         | [0](https://github.com/muschellij2/afnir/issues)             |
| [brainR](https://github.com/muschellij2/brainR)                       | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/brainR.svg?branch=master)](https://travis-ci.org/muschellij2/brainR)                       | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/brainR?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/brainR)                       | [0](https://github.com/muschellij2/brainR/issues)            |
| [checkout](https://github.com/muschellij2/checkout)                   | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/checkout.svg?branch=master)](https://travis-ci.org/muschellij2/checkout)                   | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/checkout?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/checkout)                   | [0](https://github.com/muschellij2/checkout/issues)          |
| [cifti](https://github.com/muschellij2/cifti)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/cifti.svg?branch=master)](https://travis-ci.org/muschellij2/cifti)                         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/cifti?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/cifti)                         | [0](https://github.com/muschellij2/cifti/issues)             |
| [ct.malf.templates](https://github.com/muschellij2/ct.malf.templates) | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/ct.malf.templates.svg?branch=master)](https://travis-ci.org/muschellij2/ct.malf.templates) | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/ct.malf.templates?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/ct-malf-templates) | [0](https://github.com/muschellij2/ct.malf.templates/issues) |
| [dcm2niir](https://github.com/muschellij2/dcm2niir)                   | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/dcm2niir.svg?branch=master)](https://travis-ci.org/muschellij2/dcm2niir)                   | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/dcm2niir?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/dcm2niir)                   | [0](https://github.com/muschellij2/dcm2niir/issues)          |
| [dcmtk](https://github.com/muschellij2/dcmtk)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/dcmtk.svg?branch=master)](https://travis-ci.org/muschellij2/dcmtk)                         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/dcmtk?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/dcmtk)                         | [0](https://github.com/muschellij2/dcmtk/issues)             |
| [dhs](https://github.com/muschellij2/dhs)                             | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/dhs.svg?branch=master)](https://travis-ci.org/muschellij2/dhs)                             | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/dhs?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/dhs)                             | [0](https://github.com/muschellij2/dhs/issues)               |
| [diffr](https://github.com/muschellij2/diffr)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/diffr.svg?branch=master)](https://travis-ci.org/muschellij2/diffr)                         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/diffr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/diffr)                         | [0](https://github.com/muschellij2/diffr/issues)             |
| [do-shiny-server](https://github.com/muschellij2/do-shiny-server)     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/do-shiny-server.svg?branch=master)](https://travis-ci.org/muschellij2/do-shiny-server)     | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/do-shiny-server?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/do-shiny-server)     | [0](https://github.com/muschellij2/do-shiny-server/issues)   |
| [drammsr](https://github.com/muschellij2/drammsr)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/drammsr.svg?branch=master)](https://travis-ci.org/muschellij2/drammsr)                     | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/drammsr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/drammsr)                     | [0](https://github.com/muschellij2/drammsr/issues)           |
| [dtitk](https://github.com/muschellij2/dtitk)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/dtitk.svg?branch=master)](https://travis-ci.org/muschellij2/dtitk)                         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/dtitk?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/dtitk)                         | [0](https://github.com/muschellij2/dtitk/issues)             |
| [ENARSC2015](https://github.com/muschellij2/ENARSC2015)               | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/ENARSC2015.svg?branch=master)](https://travis-ci.org/muschellij2/ENARSC2015)               | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/ENARSC2015?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/ENARSC2015)               | [0](https://github.com/muschellij2/ENARSC2015/issues)        |
| [extrantsr](https://github.com/muschellij2/extrantsr)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/extrantsr.svg?branch=master)](https://travis-ci.org/muschellij2/extrantsr)                 | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/extrantsr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/extrantsr)                 | [0](https://github.com/muschellij2/extrantsr/issues)         |
| [freesurfer](https://github.com/muschellij2/freesurfer)               | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/freesurfer.svg?branch=master)](https://travis-ci.org/muschellij2/freesurfer)               | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/freesurfer?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/freesurfer)               | [0](https://github.com/muschellij2/freesurfer/issues)        |
| [fslr](https://github.com/muschellij2/fslr)                           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/fslr.svg?branch=master)](https://travis-ci.org/muschellij2/fslr)                           | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/fslr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/fslr)                           | [0](https://github.com/muschellij2/fslr/issues)              |
| [gcite](https://github.com/muschellij2/gcite)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/gcite.svg?branch=master)](https://travis-ci.org/muschellij2/gcite)                         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/gcite?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/gcite)                         | [0](https://github.com/muschellij2/gcite/issues)             |
| [ggneuro](https://github.com/muschellij2/ggneuro)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/ggneuro.svg?branch=master)](https://travis-ci.org/muschellij2/ggneuro)                     | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/ggneuro?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/ggneuro)                     | [0](https://github.com/muschellij2/ggneuro/issues)           |
| [ghtravis](https://github.com/muschellij2/ghtravis)                   | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/ghtravis.svg?branch=master)](https://travis-ci.org/muschellij2/ghtravis)                   | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/ghtravis?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/ghtravis)                   | [0](https://github.com/muschellij2/ghtravis/issues)          |
| [gifti](https://github.com/muschellij2/gifti)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/gifti.svg?branch=master)](https://travis-ci.org/muschellij2/gifti)                         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/gifti?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/gifti)                         | [0](https://github.com/muschellij2/gifti/issues)             |
| [gluc](https://github.com/muschellij2/gluc)                           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/gluc.svg?branch=master)](https://travis-ci.org/muschellij2/gluc)                           | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/gluc?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/gluc)                           | [0](https://github.com/muschellij2/gluc/issues)              |
| [googleCite](https://github.com/muschellij2/googleCite)               | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/googleCite.svg?branch=master)](https://travis-ci.org/muschellij2/googleCite)               | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/googleCite?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/googleCite)               | [0](https://github.com/muschellij2/googleCite/issues)        |
| [greedyreg](https://github.com/muschellij2/greedyreg)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/greedyreg.svg?branch=master)](https://travis-ci.org/muschellij2/greedyreg)                 | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/greedyreg?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/greedyreg)                 | [0](https://github.com/muschellij2/greedyreg/issues)         |
| [I2C2](https://github.com/muschellij2/I2C2)                           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/I2C2.svg?branch=master)](https://travis-ci.org/muschellij2/I2C2)                           | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/I2C2?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/I2C2)                           | [0](https://github.com/muschellij2/I2C2/issues)              |
| [ichseg](https://github.com/muschellij2/ichseg)                       | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/ichseg.svg?branch=master)](https://travis-ci.org/muschellij2/ichseg)                       | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/ichseg?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/ichseg)                       | [0](https://github.com/muschellij2/ichseg/issues)            |
| [itksnapr](https://github.com/muschellij2/itksnapr)                   | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/itksnapr.svg?branch=master)](https://travis-ci.org/muschellij2/itksnapr)                   | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/itksnapr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/itksnapr)                   | [0](https://github.com/muschellij2/itksnapr/issues)          |
| [kirby21](https://github.com/muschellij2/kirby21)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21)                     | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/kirby21?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21)                     | [0](https://github.com/muschellij2/kirby21/issues)           |
| [kirby21\_scan\_1](https://github.com/muschellij2/kirby21_scan_1)     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21_scan_1.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21_scan_1)       | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/kirby21_scan_1?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21_scan_1)       | [0](https://github.com/muschellij2/kirby21_scan_1/issues)    |
| [kirby21\_scan\_2](https://github.com/muschellij2/kirby21_scan_2)     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21_scan_2.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21_scan_2)       | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/kirby21_scan_2?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21_scan_2)       | [0](https://github.com/muschellij2/kirby21_scan_2/issues)    |
| [kirby21\_scanner](https://github.com/muschellij2/kirby21_scanner)    | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21_scanner.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21_scanner)     | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/kirby21_scanner?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21_scanner)     | [0](https://github.com/muschellij2/kirby21_scanner/issues)   |
| [kirby21.asl](https://github.com/muschellij2/kirby21.asl)             | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.asl.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.asl)             | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/kirby21.asl?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21-asl)             | [0](https://github.com/muschellij2/kirby21.asl/issues)       |
| [kirby21.base](https://github.com/muschellij2/kirby21.base)           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.base.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.base)           | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/kirby21.base?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21-base)           | [0](https://github.com/muschellij2/kirby21.base/issues)      |
| [kirby21.det2](https://github.com/muschellij2/kirby21.det2)           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.det2.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.det2)           | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/kirby21.det2?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21-det2)           | [0](https://github.com/muschellij2/kirby21.det2/issues)      |
| [kirby21.dti](https://github.com/muschellij2/kirby21.dti)             | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.dti.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.dti)             | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/kirby21.dti?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21-dti)             | [0](https://github.com/muschellij2/kirby21.dti/issues)       |
| [kirby21.flair](https://github.com/muschellij2/kirby21.flair)         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.flair.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.flair)         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/kirby21.flair?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21-flair)         | [0](https://github.com/muschellij2/kirby21.flair/issues)     |
| [kirby21.fmri](https://github.com/muschellij2/kirby21.fmri)           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.fmri.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.fmri)           | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/kirby21.fmri?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21-fmri)           | [0](https://github.com/muschellij2/kirby21.fmri/issues)      |
| [kirby21.mt](https://github.com/muschellij2/kirby21.mt)               | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.mt.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.mt)               | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/kirby21.mt?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21-mt)               | [0](https://github.com/muschellij2/kirby21.mt/issues)        |
| [kirby21.smri](https://github.com/muschellij2/kirby21.smri)           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.smri.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.smri)           | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/kirby21.smri?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21-smri)           | [0](https://github.com/muschellij2/kirby21.smri/issues)      |
| [kirby21.survey](https://github.com/muschellij2/kirby21.survey)       | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.survey.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.survey)       | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/kirby21.survey?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21-survey)       | [0](https://github.com/muschellij2/kirby21.survey/issues)    |
| [kirby21.t1](https://github.com/muschellij2/kirby21.t1)               | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.t1.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.t1)               | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/kirby21.t1?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21-t1)               | [0](https://github.com/muschellij2/kirby21.t1/issues)        |
| [kirby21.t2](https://github.com/muschellij2/kirby21.t2)               | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.t2.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.t2)               | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/kirby21.t2?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21-t2)               | [0](https://github.com/muschellij2/kirby21.t2/issues)        |
| [kirby21.vaso](https://github.com/muschellij2/kirby21.vaso)           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.vaso.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.vaso)           | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/kirby21.vaso?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21-vaso)           | [0](https://github.com/muschellij2/kirby21.vaso/issues)      |
| [latexreadme](https://github.com/muschellij2/latexreadme)             | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/latexreadme.svg?branch=master)](https://travis-ci.org/muschellij2/latexreadme)             | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/latexreadme?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/latexreadme)             | [0](https://github.com/muschellij2/latexreadme/issues)       |
| [lungct](https://github.com/muschellij2/lungct)                       | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/lungct.svg?branch=master)](https://travis-ci.org/muschellij2/lungct)                       | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/lungct?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/lungct)                       | [0](https://github.com/muschellij2/lungct/issues)            |
| [malf.templates](https://github.com/muschellij2/malf.templates)       | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/malf.templates.svg?branch=master)](https://travis-ci.org/muschellij2/malf.templates)       | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/malf.templates?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/malf-templates)       | [0](https://github.com/muschellij2/malf.templates/issues)    |
| [massr](https://github.com/muschellij2/massr)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/massr.svg?branch=master)](https://travis-ci.org/muschellij2/massr)                         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/massr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/massr)                         | [0](https://github.com/muschellij2/massr/issues)             |
| [matlabr](https://github.com/muschellij2/matlabr)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/matlabr.svg?branch=master)](https://travis-ci.org/muschellij2/matlabr)                     | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/matlabr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/matlabr)                     | [0](https://github.com/muschellij2/matlabr/issues)           |
| [msseg](https://github.com/muschellij2/msseg)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/msseg.svg?branch=master)](https://travis-ci.org/muschellij2/msseg)                         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/msseg?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/msseg)                         | [0](https://github.com/muschellij2/msseg/issues)             |
| [muschmisc](https://github.com/muschellij2/muschmisc)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/muschmisc.svg?branch=master)](https://travis-ci.org/muschellij2/muschmisc)                 | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/muschmisc?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/muschmisc)                 | [0](https://github.com/muschellij2/muschmisc/issues)         |
| [muschpack](https://github.com/muschellij2/muschpack)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/muschpack.svg?branch=master)](https://travis-ci.org/muschellij2/muschpack)                 | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/muschpack?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/muschpack)                 | [0](https://github.com/muschellij2/muschpack/issues)         |
| [neurobase](https://github.com/muschellij2/neurobase)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/neurobase.svg?branch=master)](https://travis-ci.org/muschellij2/neurobase)                 | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/neurobase?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/neurobase)                 | [0](https://github.com/muschellij2/neurobase/issues)         |
| [neuroc.deps](https://github.com/muschellij2/neuroc.deps)             | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/neuroc.deps.svg?branch=master)](https://travis-ci.org/muschellij2/neuroc.deps)             | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/neuroc.deps?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/neuroc-deps)             | [0](https://github.com/muschellij2/neuroc.deps/issues)       |
| [neurohcp](https://github.com/muschellij2/neurohcp)                   | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/neurohcp.svg?branch=master)](https://travis-ci.org/muschellij2/neurohcp)                   | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/neurohcp?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/neurohcp)                   | [0](https://github.com/muschellij2/neurohcp/issues)          |
| [neurometrics](https://github.com/muschellij2/neurometrics)           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/neurometrics.svg?branch=master)](https://travis-ci.org/muschellij2/neurometrics)           | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/neurometrics?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/neurometrics)           | [0](https://github.com/muschellij2/neurometrics/issues)      |
| [nitrc](https://github.com/muschellij2/nitrc)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/nitrc.svg?branch=master)](https://travis-ci.org/muschellij2/nitrc)                         | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/nitrc?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/nitrc)                         | [0](https://github.com/muschellij2/nitrc/issues)             |
| [oro.nifti](https://github.com/muschellij2/oro.nifti)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/oro.nifti.svg?branch=master)](https://travis-ci.org/muschellij2/oro.nifti)                 | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/oro.nifti?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/oro-nifti)                 | [0](https://github.com/muschellij2/oro.nifti/issues)         |
| [oslerInstall](https://github.com/muschellij2/oslerInstall)           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/oslerInstall.svg?branch=master)](https://travis-ci.org/muschellij2/oslerInstall)           | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/oslerInstall?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/oslerInstall)           | [0](https://github.com/muschellij2/oslerInstall/issues)      |
| [papayar](https://github.com/muschellij2/papayar)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/papayar.svg?branch=master)](https://travis-ci.org/muschellij2/papayar)                     | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/papayar?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/papayar)                     | [0](https://github.com/muschellij2/papayar/issues)           |
| [rcamino](https://github.com/muschellij2/rcamino)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/rcamino.svg?branch=master)](https://travis-ci.org/muschellij2/rcamino)                     | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/rcamino?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/rcamino)                     | [0](https://github.com/muschellij2/rcamino/issues)           |
| [rdcm2niix](https://github.com/muschellij2/rdcm2niix)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/rdcm2niix.svg?branch=master)](https://travis-ci.org/muschellij2/rdcm2niix)                 | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/rdcm2niix?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/rdcm2niix)                 | [0](https://github.com/muschellij2/rdcm2niix/issues)         |
| [rscopus](https://github.com/muschellij2/rscopus)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/rscopus.svg?branch=master)](https://travis-ci.org/muschellij2/rscopus)                     | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/rscopus?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/rscopus)                     | [0](https://github.com/muschellij2/rscopus/issues)           |
| [smallpdf](https://github.com/muschellij2/smallpdf)                   | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/smallpdf.svg?branch=master)](https://travis-ci.org/muschellij2/smallpdf)                   | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/smallpdf?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/smallpdf)                   | [0](https://github.com/muschellij2/smallpdf/issues)          |
| [ssgraph](https://github.com/muschellij2/ssgraph)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/ssgraph.svg?branch=master)](https://travis-ci.org/muschellij2/ssgraph)                     | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/ssgraph?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/ssgraph)                     | [0](https://github.com/muschellij2/ssgraph/issues)           |
| [statamd](https://github.com/muschellij2/statamd)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/statamd.svg?branch=master)](https://travis-ci.org/muschellij2/statamd)                     | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/statamd?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/statamd)                     | [0](https://github.com/muschellij2/statamd/issues)           |
| [travisrgl](https://github.com/muschellij2/travisrgl)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/travisrgl.svg?branch=master)](https://travis-ci.org/muschellij2/travisrgl)                 | [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/travisrgl?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/travisrgl)                 | [0](https://github.com/muschellij2/travisrgl/issues)         |
