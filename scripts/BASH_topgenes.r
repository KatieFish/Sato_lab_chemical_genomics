#!/usr/bin/env Rscript

#user input 1 is the raw data table and user input 2 is the name of the chemical

user_input=commandArgs(trailingOnly = TRUE)

source("/Users/katiefisher/Sato_lab_chemical_genomics/scripts/top_genes.R")
source("/Users/katiefisher/Sato_lab_chemical_genomics/scripts/top_up_genes.R")
source("/Users/katiefisher/Sato_lab_chemical_genomics/scripts/top_down_genes.R")


df<- read.delim(user_input[1], header=TRUE, stringsAsFactors=FALSE)
inhibitor<- user_input[2]

df<-df[which(!df$logFC==0), ]
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
write.table(ndf, file= sprintf("%s_top_genes.tsv",inhibitor), sep="\t", quote=FALSE)

