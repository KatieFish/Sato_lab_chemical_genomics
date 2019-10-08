#!/usr/bin/env Rscript

#user input 1 is the raw data table and user input 2 is the name of the chemical

user_input=commandArgs(trailingOnly = TRUE)

source("fix_dfs.R")
source("top_genes.R")
source("top_up_genes.R")
source("top_down_genes.R")


df<- read.delim(user_input[1], header=TRUE, stringsAsFactors=FALSE)
inhibitor<- user_input[2]

df<- fix_dfs(df)
df$to_permute<-paste(df[,2], df[,5], sep=",")
df[,7]<-sample(df[,7], replace=FALSE)
for (i in 1:nrow(df)){
	newvals<- strsplit(df[i,7], ",")
	df[i,2]<- as.numeric(newvals[[1]][1])
	df[i,5]<- as.numeric(newvals[[1]][2])
}

all_tops<-top_genes(df)
up_tops<- top_up_genes(df, all_tops)
down_tops<-top_down_genes(df, all_tops)

if(length(up_tops)>length(down_tops)){
	down_tops[length(down_tops):length(up_tops)]<-NA
	inhib<-rep(inhibitor, length(up_tops))
	} else{
	up_tops[length(up_tops):length(down_tops)]<-NA
	inhib<-rep(inhibitor, length(down_tops))
	}
	
ndf<- data.frame(inhib, unlist(up_tops), unlist(down_tops))
colnames(ndf)<-c("Inhibitor", "Significant_up_deletions", "Significant_down_deletions")
write.table(ndf, file= sprintf("simulated_%s_top_genes.tsv",inhibitor), sep="\t", quote=FALSE)

