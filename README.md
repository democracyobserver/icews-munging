# icews-munging
Code snippets to aid working with ICEWS data.

## Purpose

The ICEWS data, made available on the ![Harvard Dataverse](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/28075) represents one of the most detailed collection efforts aimed at gathering data on social and political events and interactions. Despite a wealth of data, the files are numerous and large, and are not set up to be merged into existing or new time-series, cross-sectional datasets. As such, this collection of code snippets aims to provide a straightforward way to work with ICEWS data in `R`.

## Usage

<!-- To install the code file from GitHub:

```r
## install devtools if not already
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
## install icews-munging from Github
devtools::install_github("democracyobserver/icews-munging")
``` -->
**It is not currently recommended to download or import from this repo.** Until this message is removed, consider this code incomplete. Feel free to fork or create issues to help work on the following:

* more functionality & working with different types of ICEWS data 
* streamlining the (extremely long) processing time 

## Notes

A current limitation is that you must already have downloaded the raw data and have it as local files in `.tab` or `.tsv` formats. 

The `icewsEventMunger` creates a `.rds` file using compression. Between loading the various large text files and writing out with compression this function takes a long time (>30m) to process on moderately fast machines with 16GB RAM. Compression is necessary, as running the function with all years of event data in the directory will result in a 14.2m observation *tibble*; without compression this results in a 5GB file.

Suggestions aimed at streamlining processing time are welcome.
