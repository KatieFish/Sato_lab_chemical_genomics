#!/usr/bin/env Rscript


library(tidyr)
library(plyr)


#repeat lines for each df

df<-read.delim("simulated_22Diprydyl_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]
Top_gene_master_df<- long_DF




df<-read.delim("simulated_24Dimethylimidazole_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("simulated_26Dimethylpyrazine_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("simulated_2Methylimidazole_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_45Methylimidazole_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("simulated_4OHAcetophenone_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("simulated_4OHBenzaldehyde_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_4OHBenzoicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_5HMF_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_Acetamide_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("simulated_AcetoSyringone_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_Acetovanillone_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("simulated_AzelaicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_BMIMCl_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_Benomyl_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_BenzoicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_CV_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_CaffeicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_CinnamicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_CoumaricAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_CoumaroylAmide_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_DMSO_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_EMIMCl_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_EtOH_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_FerulicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_FeruloylAmide_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_Furfural_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("simulated_GVL_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_Isobutanol_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_LevulinicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_MBO_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_Methylglyoxal_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_Mycobutanil_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_NAO_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_SinapicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("simulated_SodiumGlyoxylate_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("simulated_Syringaldehyde_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]

Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)



df<-read.delim("simulated_SyringicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_VanillicAcid_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


df<-read.delim("simulated_Vanillin_top_genes.tsv", header=TRUE, stringsAsFactors=FALSE)
long_DF <- df %>% gather(Direction, Deletion, Significant_up_deletions:Significant_down_deletions)
x<-which(is.na(long_DF[,3]))
long_DF<-long_DF[-x, ]


Top_gene_master_df<- rbind(Top_gene_master_df, long_DF)


Top_gene_master_df[,2]<-as.character(Top_gene_master_df[,2])
downs<- which(Top_gene_master_df[,2]=="Significant_down_deletions")
ups<- which(Top_gene_master_df[,2]=="Significant_up_deletions")
Top_gene_master_df[downs, 2]<-"down"
Top_gene_master_df[ups, 2]<-"up"

x<-count(Top_gene_master_df[,3])
print(mean(x[,2]))

#write.table(Top_gene_master_df, "simulated_Tradeoff_pleiotropy_table.tsv", sep="\t", quote=FALSE)
