#!/usr/bin/env Rscript


library(tidyr)

#repeat lines for each df


df<-read.delim("normalized_22Diprydyl_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]
Top_gene_master_df<- long_DF




df<-read.delim("normalized_24Dimethylimidazole_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("normalized_26Dimethylpyrazine_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("normalized_2Methylimidazole_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_45Methylimidazole_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("normalized_4OHAcetophenone_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("normalized_4OHBenzaldehyde_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_4OHBenzoicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_5HMF_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_Acetamide_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("normalized_AcetoSyringone_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_Acetovanillone_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("normalized_AzelaicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_BMIMCl_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_Benomyl_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_BenzoicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_CV_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_CaffeicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_CinnamicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_CoumaricAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_CoumaroylAmide_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_DMSO_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_EMIMCl_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_EtOH_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_FerulicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_FeruloyAmide_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_Furfural_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("normalized_GVL_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_Isobutanol_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_LevulinicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_MBO_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_Methylglyoxal_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_Mycobutanil_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_NAO_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_SinapicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("normalized_SodiumGlyoxylate_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("normalized_Syringaldehyde_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("normalized_SyringicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_VanillicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("normalized_Vanillin_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
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
