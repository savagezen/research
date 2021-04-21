#!/usr/bin/R
# Analyze raw data (ecr.xlsx) from C&A ECR study

# required packages
# - readxl
# - dplyr
# - Hmisc (requires acepack, requires gcc-fortran on *nix)

# library
library("readxl")
library("dplyr")
library("Hmisc")

# import raw excel to data frame
raw_data <- read_excel("raw_data.xlsx", sheet="Raw Data")

# convert data to numerical matrix
df <- as.matrix(as.data.frame(lapply(raw_data, as.numeric)))

# output file
sink("ecr_descriptive_statistics.txt", split=TRUE, append=FALSE)

# descriptive statistics
summary(raw_data)

# output file
sink("ecr_corr_sig.txt", split=TRUE, append=FALSE)

# correlations (r) and significance (p)
rcorr(df, type=c("pearson"))
