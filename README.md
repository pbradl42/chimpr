chimpr
======



[![Build Status](https://travis-ci.org/sckott/chimpr.svg?branch=master)](https://travis-ci.org/sckott/chimpr)
[![codecov.io](https://codecov.io/github/sckott/chimpr/coverage.svg?branch=master)](https://codecov.io/github/sckott/chimpr?branch=master)
[![rstudio mirror downloads](http://cranlogs.r-pkg.org/badges/chimpr)](https://github.com/metacran/cranlogs.app)
[![cran version](http://www.r-pkg.org/badges/version/chimpr)](https://cran.r-project.org/package=chimpr)

[Mailchimp API docs][docs]

## Authentication

Get a Mailchimp API key at <https://developer.mailchimp.com/documentation/mailchimp/>

Keep this key private. You can pass the key in to each function via the
`key` parameter, but it's better to store the key as an environment
variable (`MAILCHIMP_KEY`).

## High vs. Low level package APIs

__High level API__

parse to a list or data.frame

__Low level API__

just get some JSON

## Rate Limiting

...

## Install

Development version


```r
devtools::install_github("sckott/chimpr")
```


```r
library("chimpr")
```

## lists

all lists


```r
# JSON
ch_lists_()
# parse to data.frame where possible
ch_lists()
# parse to a list
ch_lists(parse = FALSE)
```

## Meta

* Please [report any issues or bugs](https://github.com/sckott/chimpr/issues).
* License: MIT
* Get citation information for `chimpr` in R doing `citation(package = 'chimpr')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.

[docs]: https://developer.mailchimp.com/documentation/mailchimp/
