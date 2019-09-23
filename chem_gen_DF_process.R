#!/usr/bin/env Rscript


user_input=commandArgs(trailingOnly = TRUE)

source("fix_dfs.R")

DF<- read.delim(user_input[1], header=TRUE, stringsAsFactors=FALSE)
inhibitor<- user_input[2]

inhibitor_df<- fix_dfs(DF)
colnames(inhibitor_df)[2]<-inhibitor

inhibitor_df<-inhibitor_df[1:2]

write.table(inhibitor_df, file= sprintf("%s.tsv",inhibitor), sep="\t")
