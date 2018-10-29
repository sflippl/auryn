
<!-- README.md is generated from README.Rmd. Please edit that file -->
auryn
=====

[![Travis build status](https://travis-ci.org/sflippl/auryn.svg?branch=master)](https://travis-ci.org/sflippl/auryn) [![Coverage status](https://codecov.io/gh/sflippl/auryn/branch/master/graph/badge.svg)](https://codecov.io/github/sflippl/auryn?branch=master)

auryn will eventually provide an accessible API to the C++ library auryn, which is dedicated to the fast simulation of neural networks with synaptic plasticity (Zenke and Gerstner 2014). It is currently under development.

Installation
------------

auryn can be installed from github via

``` r
# install.packages("devtools")
devtools::install_github("sflippl/auryn")
```

Development
-----------

auryn is currently at the beginning of its development. At the moment, it only consists of a reader for files with a .ras extension as the C++ library uses this format to save its output. As an example, you can read in some sample data which has been created using the first example in the [quick start](http://www.fzenke.net/auryn/doku.php?id=quick_start):

``` r
library(auryn)
read_ras("inst/extdata/poisson.0.ras")
#> # A tibble: 5,013 x 2
#>          x     y
#>      <dbl> <int>
#>  1 0.0002    307
#>  2 0.0005      2
#>  3 0.0007    920
#>  4 0.0008    423
#>  5 0.0009    214
#>  6 0.00120   905
#>  7 0.0013    707
#>  8 0.0017    108
#>  9 0.0017    236
#> 10 0.0017    764
#> # ... with 5,003 more rows
```

The next implemented features will include visualization before going on to more fundamental questions.

References
==========

Zenke, Friedemann, and Wulfram Gerstner. 2014. “Limits to high-speed simulations of spiking neural networks using general-purpose computers.” *Frontiers in Neuroinformatics* 8 (September). Frontiers: 76. doi:[10.3389/fninf.2014.00076](https://doi.org/10.3389/fninf.2014.00076).
