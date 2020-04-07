#!/usr/bin/env Rscript


library(tidyr)

#repeat lines for each df


df<-read.delim("22Dipyridyl_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]
Top_gene_master_df<- long_DF




df<-read.delim("24Dimethylimidazole_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("26Dimethylpyrazine_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("2Methylimidazole_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("45Methylimidazole_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("4OHAcetophenone_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("4OHBenzaldehyde_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("4OHBenzoicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("5HMF_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("Acetamide_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("AcetoSyringone_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("Acetovanillone_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("AzelaicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("BMIMCl_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("Benomyl_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("BenzoicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("CV_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("CaffeicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("CinnamicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("CoumaricAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("CoumaroylAmide_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("DMSO_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("EMIMCl_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("EtOH_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("FerulicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("FeruloylAmide_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("Furfural_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("GVL_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("Isobutanol_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("LevulinicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("MBO_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("Methylglyoxal_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("Mycobutanil_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("NAO_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("SinapicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("SodiumGlyoxylate_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("Syringaldehyde_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("SyringicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("VanillicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("Vanillin_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)

df<-read.delim("SodiumAcetate_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)

df<-read.delim("SodiumButyrate_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


Top_gene_master_df[,2]<-as.character(Top_gene_master_df[,2])
downs<- which(Top_gene_master_df[,2]=="Significant_down_deletions")
ups<- which(Top_gene_master_df[,2]=="Significant_up_deletions")
Top_gene_master_df[downs, 2]<-"down"
Top_gene_master_df[ups, 2]<-"up"

write.table(Top_gene_master_df, "Tradeoff_pleiotropy_table.tsv", sep="\t", quote=FALSE)
