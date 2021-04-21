#!/usr/bin/R
# compute and graph correlation statistics for sleep study control control

# library
library(dplyr)
library(Hmisc)
library(corrplot)

raw_data <- read.delim("raw_data-sleep_control.tsv")
df <- as.matrix(as.data.frame(lapply(raw_data, as.numeric)))

sink("descriptive_stats-sleep_control.txt")
summary(raw_data)

sink("correlation-sleep_control.txt")
rcorr(df, type=c("pearson"))

res <- rcorr(df, type=c("pearson"))
corrplot(res$r, type="upper", order="hclust", p.mat = res$P, sig.level = 0.05, insig = "blank", main="Correlations at P = 0.05")
dev.copy(png, "plot-sleep-control-0500.png")
dev.off()
dev.off()

res <- rcorr(df, type=c("pearson"))
corrplot(res$r, type="upper", order="hclust", p.mat = res$P, sig.level = 0.01, insig = "blank", main="Correlations at P = 0.01")
dev.copy(png, "plot-sleep-control-0100.png")
dev.off()
dev.off()

res <- rcorr(df, type=c("pearson"))
corrplot(res$r, type="upper", order="hclust", p.mat = res$P, sig.level = 0.001, insig = "blank", main="Correlations at P = 0.001")
dev.copy(png, "plot-sleep-control-0010.png")
dev.off()
dev.off()

res <- rcorr(df, type=c("pearson"))
corrplot(res$r, type="upper", order="hclust", p.mat = res$P, sig.level = 0.0001, insig = "blank", main="Correlations at P = 0.0001")
dev.copy(png, "plot-sleep-control-0001.png")
dev.off()
dev.off()
