##
##  Created by Nicholas R. Davis (nicholas@democracyobserver.org)
##  on 2019-07-05 18:44:49. Intended for GitHub distribution.
##
##########################################################

# note you want to set your working directory to point at the raw files
setwd("~/Documents/RDatafiles/icews-raw")

###################   LOAD  ##############################

require(tidyverse)

####################  CODE  ##############################

# function to gather and format the events data for all years
# note this produces a .rds file of large size and potentially millions of rows
icewsEventMunger <- function(directory = getwd()){
	files <- dir(directory)
	icewsdf <- NULL
	for(i in 1:length(files)){
		tmp <- read_tsv(files[i])
		icewsdf <- rbind(icewsdf, tmp)
		rm(tmp)
	}
	as_tibble(icewsdf)

	# "fix" the column names
	attr(icewsdf, "var.labels") <- names(icewsdf)
	names(icewsdf) <- tolower(gsub(" ", "_", names(icewsdf), fixed = TRUE))
	write_rds(icewsdf, paste0("icews-eventdata_", Sys.Date(), ".rds"), compress = "xz")
}
