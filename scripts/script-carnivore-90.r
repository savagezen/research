#!/usr/bin/R
# compute and graph correlation statistics for carnivore 90 day review

# library
library(dplyr)
library(Hmisc)
library(corrplot)

raw_data <- read.delim("raw_data-carnivore_90.tsv")
df <- as.matrix(as.data.frame(lapply(raw_data, as.numeric)))

sink("descriptive_stats-carnivore_90.txt")
summary(raw_data)

sink("correlation-carnivore_90.txt")
rcorr(df, type=c("pearson"))

res <- rcorr(df, type=c("pearson"))
corrplot(res$r, type="upper", order="hclust", p.mat = res$P, sig.level = 0.05, insig = "blank", main="Correlations at P = 0.05")
dev.copy(png, "plot-carnivore-90-0500.png")
dev.off()
dev.off()

res <- rcorr(df, type=c("pearson"))
corrplot(res$r, type="upper", order="hclust", p.mat = res$P, sig.level = 0.01, insig = "blank", main="Correlations at P = 0.01")
dev.copy(png, "plot-carnivore-90-0100.png")
dev.off()
dev.off()

res <- rcorr(df, type=c("pearson"))
corrplot(res$r, type="upper", order="hclust", p.mat = res$P, sig.level = 0.001, insig = "blank", main="Correlations at P = 0.001")
dev.copy(png, "plot-carnivore-90-0010.png")
dev.off()
dev.off()

res <- rcorr(df, type=c("pearson"))
corrplot(res$r, type="upper", order="hclust", p.mat = res$P, sig.level = 0.0001, insig = "blank", main="Correlations at P = 0.0001")
dev.copy(png, "plot-carnivore-90-0001.png")
dev.off()
dev.off()
