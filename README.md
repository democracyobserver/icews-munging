# icews-munging
Code snippets to aid working with ICEWS data.

## Purpose

The ICEWS data, made available on the ![Harvard Dataverse](https://dataverse.harvard.edu/dataverse/icews) represents one of the most detailed collection efforts aimed at gathering data on social and political events and interactions. Despite a wealth of data, the files are numerous and large, and are not set up to be merged into existing or new time-series, cross-sectional datasets. As such, this collection of code snippets aims to provide a straightforward way to work with ICEWS data in `R`.

## Usage

To install the code file from GitHub:

```r
## install devtools if not already
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
## install icews-munging from Github
devtools::install_github("democracyobserver/icews-munging")
```

## Notes

A current limitation is that you must already have downloaded the raw data and have it as local files in `.tab` or `.tsv` formats. 