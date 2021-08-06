
<!-- README.md is generated from README.Rmd. Please edit that file -->

# aRuleNet

<!-- badges: start -->

[![Codecov test
coverage](https://codecov.io/gh/mskogholt/aRuleNet/branch/master/graph/badge.svg)](https://codecov.io/gh/mskogholt/aRuleNet?branch=master)
[![Travis build
status](https://travis-ci.com/mskogholt/aRuleNet.svg?branch=master)](https://travis-ci.com/mskogholt/aRuleNet)
<!-- badges: end -->

The goal of aRuleNet is to …

## Installation

You can install the released version of aRuleNet from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("aRuleNet")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mskogholt/aRuleNet")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(aRuleNet)

x <- iris[1:4]
output <- fit(x)
#> Warning: Column(s) 1, 2, 3, 4 not logical or factor. Applying default
#> discretization (see '? discretizeDF').
#> Apriori
#> 
#> Parameter specification:
#>  confidence minval smax arem  aval originalSupport maxtime support minlen
#>         0.8    0.1    1 none FALSE            TRUE       5     0.1      1
#>  maxlen target  ext
#>      10  rules TRUE
#> 
#> Algorithmic control:
#>  filter tree heap memopt load sort verbose
#>     0.1 TRUE TRUE  FALSE TRUE    2    TRUE
#> 
#> Absolute minimum support count: 15 
#> 
#> set item appearances ...[0 item(s)] done [0.00s].
#> set transactions ...[12 item(s), 150 transaction(s)] done [0.00s].
#> sorting and recoding items ... [12 item(s)] done [0.00s].
#> creating transaction tree ... done [0.00s].
#> checking subsets of size 1 2 3 4 done [0.00s].
#> writing ... [38 rule(s)] done [0.00s].
#> creating S4 object  ... done [0.00s].
summary(output)
#>   Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
#>  Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
#>  1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
#>  Median :5.800   Median :3.000   Median :4.350   Median :1.300  
#>  Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
#>  3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
#>  Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500
```
