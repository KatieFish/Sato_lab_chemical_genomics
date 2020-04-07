#!/usr/bin/env Rscript


user_input=commandArgs(trailingOnly = TRUE)

source("/Users/katiefisher/Sato_lab_chemical_genomics/scripts/fix_dfs.R")

DF<- read.delim(user_input[1], header=TRUE, stringsAsFactors=FALSE)
inhibitor<- user_input[2]

inhibitor_df<- fix_dfs(DF)
# colnames(inhibitor_df)[2]<-inhibitor

inhibitor_df<-inhibitor_df[c(1, 13, 14, 15, 16, 17)]

write.table(inhibitor_df, file= sprintf("%s.tsv",inhibitor), sep="\t")

