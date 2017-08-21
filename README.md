
[![Travis-CI Build Status](https://travis-ci.org/muschellij2/muschpack.svg?branch=master)](https://travis-ci.org/muschellij2/muschpack)

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
mine = mine %>% filter(!grepl("^test", bare))
knitr::kable(mine[, c("gh_link", "travis_badge", "appveyor_badge")])
```

| gh\_link                                                                          | travis\_badge                                                                                                                                           | appveyor\_badge                                                                                                                                                                 |
|:----------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [muschellij2/afnir](https://github.com/muschellij2/afnir)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/afnir.svg?branch=master)](https://travis-ci.org/muschellij2/afnir)                         | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/afnir?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/afnir)                         |
| [muschellij2/ANTsR\_norgl](https://github.com/muschellij2/ANTsR_norgl)            | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/ANTsR_norgl.svg?branch=master)](https://travis-ci.org/muschellij2/ANTsR_norgl)             | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/ANTsR_norgl?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/ANTsR_norgl)             |
| [muschellij2/brainR](https://github.com/muschellij2/brainR)                       | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/brainR.svg?branch=master)](https://travis-ci.org/muschellij2/brainR)                       | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/brainR?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/brainR)                       |
| [muschellij2/checkout](https://github.com/muschellij2/checkout)                   | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/checkout.svg?branch=master)](https://travis-ci.org/muschellij2/checkout)                   | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/checkout?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/checkout)                   |
| [muschellij2/cifti](https://github.com/muschellij2/cifti)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/cifti.svg?branch=master)](https://travis-ci.org/muschellij2/cifti)                         | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/cifti?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/cifti)                         |
| [muschellij2/clusterRundown](https://github.com/muschellij2/clusterRundown)       | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/clusterRundown.svg?branch=master)](https://travis-ci.org/muschellij2/clusterRundown)       | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/clusterRundown?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/clusterRundown)       |
| [muschellij2/ct.malf.templates](https://github.com/muschellij2/ct.malf.templates) | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/ct.malf.templates.svg?branch=master)](https://travis-ci.org/muschellij2/ct.malf.templates) | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/ct.malf.templates?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/ct.malf.templates) |
| [muschellij2/dcm2niir](https://github.com/muschellij2/dcm2niir)                   | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/dcm2niir.svg?branch=master)](https://travis-ci.org/muschellij2/dcm2niir)                   | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/dcm2niir?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/dcm2niir)                   |
| [muschellij2/dcmtk](https://github.com/muschellij2/dcmtk)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/dcmtk.svg?branch=master)](https://travis-ci.org/muschellij2/dcmtk)                         | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/dcmtk?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/dcmtk)                         |
| [muschellij2/dhs](https://github.com/muschellij2/dhs)                             | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/dhs.svg?branch=master)](https://travis-ci.org/muschellij2/dhs)                             | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/dhs?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/dhs)                             |
| [muschellij2/diffr](https://github.com/muschellij2/diffr)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/diffr.svg?branch=master)](https://travis-ci.org/muschellij2/diffr)                         | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/diffr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/diffr)                         |
| [muschellij2/do-shiny-server](https://github.com/muschellij2/do-shiny-server)     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/do-shiny-server.svg?branch=master)](https://travis-ci.org/muschellij2/do-shiny-server)     | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/do-shiny-server?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/do-shiny-server)     |
| [muschellij2/drammsr](https://github.com/muschellij2/drammsr)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/drammsr.svg?branch=master)](https://travis-ci.org/muschellij2/drammsr)                     | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/drammsr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/drammsr)                     |
| [muschellij2/dtitk](https://github.com/muschellij2/dtitk)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/dtitk.svg?branch=master)](https://travis-ci.org/muschellij2/dtitk)                         | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/dtitk?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/dtitk)                         |
| [muschellij2/ENARSC2015](https://github.com/muschellij2/ENARSC2015)               | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/ENARSC2015.svg?branch=master)](https://travis-ci.org/muschellij2/ENARSC2015)               | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/ENARSC2015?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/ENARSC2015)               |
| [muschellij2/extrantsr](https://github.com/muschellij2/extrantsr)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/extrantsr.svg?branch=master)](https://travis-ci.org/muschellij2/extrantsr)                 | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/extrantsr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/extrantsr)                 |
| [muschellij2/freesurfer](https://github.com/muschellij2/freesurfer)               | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/freesurfer.svg?branch=master)](https://travis-ci.org/muschellij2/freesurfer)               | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/freesurfer?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/freesurfer)               |
| [muschellij2/fslr](https://github.com/muschellij2/fslr)                           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/fslr.svg?branch=master)](https://travis-ci.org/muschellij2/fslr)                           | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/fslr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/fslr)                           |
| [muschellij2/gcite](https://github.com/muschellij2/gcite)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/gcite.svg?branch=master)](https://travis-ci.org/muschellij2/gcite)                         | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/gcite?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/gcite)                         |
| [muschellij2/ggneuro](https://github.com/muschellij2/ggneuro)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/ggneuro.svg?branch=master)](https://travis-ci.org/muschellij2/ggneuro)                     | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/ggneuro?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/ggneuro)                     |
| [muschellij2/ghtravis](https://github.com/muschellij2/ghtravis)                   | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/ghtravis.svg?branch=master)](https://travis-ci.org/muschellij2/ghtravis)                   | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/ghtravis?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/ghtravis)                   |
| [muschellij2/gifti](https://github.com/muschellij2/gifti)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/gifti.svg?branch=master)](https://travis-ci.org/muschellij2/gifti)                         | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/gifti?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/gifti)                         |
| [muschellij2/gluc](https://github.com/muschellij2/gluc)                           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/gluc.svg?branch=master)](https://travis-ci.org/muschellij2/gluc)                           | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/gluc?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/gluc)                           |
| [muschellij2/googleCite](https://github.com/muschellij2/googleCite)               | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/googleCite.svg?branch=master)](https://travis-ci.org/muschellij2/googleCite)               | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/googleCite?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/googleCite)               |
| [muschellij2/greedyreg](https://github.com/muschellij2/greedyreg)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/greedyreg.svg?branch=master)](https://travis-ci.org/muschellij2/greedyreg)                 | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/greedyreg?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/greedyreg)                 |
| [muschellij2/I2C2](https://github.com/muschellij2/I2C2)                           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/I2C2.svg?branch=master)](https://travis-ci.org/muschellij2/I2C2)                           | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/I2C2?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/I2C2)                           |
| [muschellij2/ichseg](https://github.com/muschellij2/ichseg)                       | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/ichseg.svg?branch=master)](https://travis-ci.org/muschellij2/ichseg)                       | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/ichseg?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/ichseg)                       |
| [muschellij2/itksnapr](https://github.com/muschellij2/itksnapr)                   | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/itksnapr.svg?branch=master)](https://travis-ci.org/muschellij2/itksnapr)                   | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/itksnapr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/itksnapr)                   |
| [muschellij2/kirby21](https://github.com/muschellij2/kirby21)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21)                     | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/kirby21?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21)                     |
| [muschellij2/kirby21.asl](https://github.com/muschellij2/kirby21.asl)             | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.asl.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.asl)             | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/kirby21.asl?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21.asl)             |
| [muschellij2/kirby21.base](https://github.com/muschellij2/kirby21.base)           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.base.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.base)           | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/kirby21.base?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21.base)           |
| [muschellij2/kirby21.det2](https://github.com/muschellij2/kirby21.det2)           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.det2.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.det2)           | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/kirby21.det2?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21.det2)           |
| [muschellij2/kirby21.dti](https://github.com/muschellij2/kirby21.dti)             | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.dti.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.dti)             | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/kirby21.dti?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21.dti)             |
| [muschellij2/kirby21.flair](https://github.com/muschellij2/kirby21.flair)         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.flair.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.flair)         | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/kirby21.flair?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21.flair)         |
| [muschellij2/kirby21.fmri](https://github.com/muschellij2/kirby21.fmri)           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.fmri.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.fmri)           | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/kirby21.fmri?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21.fmri)           |
| [muschellij2/kirby21.mt](https://github.com/muschellij2/kirby21.mt)               | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.mt.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.mt)               | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/kirby21.mt?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21.mt)               |
| [muschellij2/kirby21.smri](https://github.com/muschellij2/kirby21.smri)           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.smri.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.smri)           | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/kirby21.smri?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21.smri)           |
| [muschellij2/kirby21.survey](https://github.com/muschellij2/kirby21.survey)       | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.survey.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.survey)       | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/kirby21.survey?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21.survey)       |
| [muschellij2/kirby21.t1](https://github.com/muschellij2/kirby21.t1)               | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.t1.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.t1)               | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/kirby21.t1?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21.t1)               |
| [muschellij2/kirby21.t2](https://github.com/muschellij2/kirby21.t2)               | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.t2.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.t2)               | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/kirby21.t2?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21.t2)               |
| [muschellij2/kirby21.vaso](https://github.com/muschellij2/kirby21.vaso)           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21.vaso.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21.vaso)           | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/kirby21.vaso?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21.vaso)           |
| [muschellij2/kirby21\_scanner](https://github.com/muschellij2/kirby21_scanner)    | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21_scanner.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21_scanner)     | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/kirby21_scanner?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21_scanner)     |
| [muschellij2/kirby21\_scan\_1](https://github.com/muschellij2/kirby21_scan_1)     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21_scan_1.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21_scan_1)       | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/kirby21_scan_1?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21_scan_1)       |
| [muschellij2/kirby21\_scan\_2](https://github.com/muschellij2/kirby21_scan_2)     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/kirby21_scan_2.svg?branch=master)](https://travis-ci.org/muschellij2/kirby21_scan_2)       | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/kirby21_scan_2?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/kirby21_scan_2)       |
| [muschellij2/latexreadme](https://github.com/muschellij2/latexreadme)             | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/latexreadme.svg?branch=master)](https://travis-ci.org/muschellij2/latexreadme)             | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/latexreadme?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/latexreadme)             |
| [muschellij2/lungct](https://github.com/muschellij2/lungct)                       | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/lungct.svg?branch=master)](https://travis-ci.org/muschellij2/lungct)                       | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/lungct?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/lungct)                       |
| [muschellij2/malf.templates](https://github.com/muschellij2/malf.templates)       | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/malf.templates.svg?branch=master)](https://travis-ci.org/muschellij2/malf.templates)       | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/malf.templates?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/malf.templates)       |
| [muschellij2/massr](https://github.com/muschellij2/massr)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/massr.svg?branch=master)](https://travis-ci.org/muschellij2/massr)                         | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/massr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/massr)                         |
| [muschellij2/matlabr](https://github.com/muschellij2/matlabr)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/matlabr.svg?branch=master)](https://travis-ci.org/muschellij2/matlabr)                     | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/matlabr?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/matlabr)                     |
| [muschellij2/msseg](https://github.com/muschellij2/msseg)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/msseg.svg?branch=master)](https://travis-ci.org/muschellij2/msseg)                         | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/msseg?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/msseg)                         |
| [muschellij2/muschmisc](https://github.com/muschellij2/muschmisc)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/muschmisc.svg?branch=master)](https://travis-ci.org/muschellij2/muschmisc)                 | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/muschmisc?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/muschmisc)                 |
| [muschellij2/muschpack](https://github.com/muschellij2/muschpack)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/muschpack.svg?branch=master)](https://travis-ci.org/muschellij2/muschpack)                 | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/muschpack?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/muschpack)                 |
| [muschellij2/neurobase](https://github.com/muschellij2/neurobase)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/neurobase.svg?branch=master)](https://travis-ci.org/muschellij2/neurobase)                 | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/neurobase?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/neurobase)                 |
| [muschellij2/neuroc.deps](https://github.com/muschellij2/neuroc.deps)             | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/neuroc.deps.svg?branch=master)](https://travis-ci.org/muschellij2/neuroc.deps)             | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/neuroc.deps?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/neuroc.deps)             |
| [muschellij2/neurocInstall](https://github.com/muschellij2/neurocInstall)         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/neurocInstall.svg?branch=master)](https://travis-ci.org/muschellij2/neurocInstall)         | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/neurocInstall?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/neurocInstall)         |
| [muschellij2/neurohcp](https://github.com/muschellij2/neurohcp)                   | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/neurohcp.svg?branch=master)](https://travis-ci.org/muschellij2/neurohcp)                   | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/neurohcp?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/neurohcp)                   |
| [muschellij2/neurometrics](https://github.com/muschellij2/neurometrics)           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/neurometrics.svg?branch=master)](https://travis-ci.org/muschellij2/neurometrics)           | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/neurometrics?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/neurometrics)           |
| [muschellij2/nitrc](https://github.com/muschellij2/nitrc)                         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/nitrc.svg?branch=master)](https://travis-ci.org/muschellij2/nitrc)                         | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/nitrc?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/nitrc)                         |
| [muschellij2/oro.nifti](https://github.com/muschellij2/oro.nifti)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/oro.nifti.svg?branch=master)](https://travis-ci.org/muschellij2/oro.nifti)                 | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/oro.nifti?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/oro.nifti)                 |
| [muschellij2/oslerInstall](https://github.com/muschellij2/oslerInstall)           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/oslerInstall.svg?branch=master)](https://travis-ci.org/muschellij2/oslerInstall)           | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/oslerInstall?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/oslerInstall)           |
| [muschellij2/papayar](https://github.com/muschellij2/papayar)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/papayar.svg?branch=master)](https://travis-ci.org/muschellij2/papayar)                     | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/papayar?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/papayar)                     |
| [muschellij2/papayaWidget](https://github.com/muschellij2/papayaWidget)           | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/papayaWidget.svg?branch=master)](https://travis-ci.org/muschellij2/papayaWidget)           | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/papayaWidget?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/papayaWidget)           |
| [muschellij2/processVISION](https://github.com/muschellij2/processVISION)         | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/processVISION.svg?branch=master)](https://travis-ci.org/muschellij2/processVISION)         | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/processVISION?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/processVISION)         |
| [muschellij2/rcamino](https://github.com/muschellij2/rcamino)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/rcamino.svg?branch=master)](https://travis-ci.org/muschellij2/rcamino)                     | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/rcamino?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/rcamino)                     |
| [muschellij2/rdcm2niix](https://github.com/muschellij2/rdcm2niix)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/rdcm2niix.svg?branch=master)](https://travis-ci.org/muschellij2/rdcm2niix)                 | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/rdcm2niix?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/rdcm2niix)                 |
| [muschellij2/rscopus](https://github.com/muschellij2/rscopus)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/rscopus.svg?branch=master)](https://travis-ci.org/muschellij2/rscopus)                     | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/rscopus?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/rscopus)                     |
| [muschellij2/smallpdf](https://github.com/muschellij2/smallpdf)                   | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/smallpdf.svg?branch=master)](https://travis-ci.org/muschellij2/smallpdf)                   | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/smallpdf?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/smallpdf)                   |
| [muschellij2/spm12r](https://github.com/muschellij2/spm12r)                       | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/spm12r.svg?branch=master)](https://travis-ci.org/muschellij2/spm12r)                       | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/spm12r?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/spm12r)                       |
| [muschellij2/ssgraph](https://github.com/muschellij2/ssgraph)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/ssgraph.svg?branch=master)](https://travis-ci.org/muschellij2/ssgraph)                     | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/ssgraph?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/ssgraph)                     |
| [muschellij2/statamd](https://github.com/muschellij2/statamd)                     | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/statamd.svg?branch=master)](https://travis-ci.org/muschellij2/statamd)                     | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/statamd?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/statamd)                     |
| [muschellij2/travisrgl](https://github.com/muschellij2/travisrgl)                 | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/travisrgl.svg?branch=master)](https://travis-ci.org/muschellij2/travisrgl)                 | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/travisrgl?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/travisrgl)                 |
| [muschellij2/WhiteStripe](https://github.com/muschellij2/WhiteStripe)             | [![Travis-CI Build Status](https://travis-ci.org/muschellij2/WhiteStripe.svg?branch=master)](https://travis-ci.org/muschellij2/WhiteStripe)             | [![AppVeyor Build Status](https://ci.appveyor.com/project/muschellij2/WhiteStripe?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/WhiteStripe)             |
