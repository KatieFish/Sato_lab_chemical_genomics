#!/usr/bin/env Rscript

source("scripts/min_max_normalize_individual_raw_files.R")
source("scripts/fix_dfs.R")


df<-read.delim("raw_files/22Dipyridyl_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_22Dipyridyl_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/24Dimethylimidazole_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_24Dimethylimidazole_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/26Dimethylpyrazine_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_26Dimethylpyrazine_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/2Methylimidazole_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_2Methylimidazole_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/45Methylimidazole_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_45Methylimidazole_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/4OHAcetophenone_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_4OHAcetophenone_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/4OHBenzaldehyde_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_4OHBenzaldehyde_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/4OHBenzoicAcid_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_4OHBenzoicAcid_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/5HMF_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_5HMF_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/Acetamide_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_Acetamide_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/AcetoSyringone_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_AcetoSyringone_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/Acetovanillone_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_Acetovanillone_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/AzelaicAcid_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_AzelaicAcid_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/BMIMCl_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_BMIMCl_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/Benomyl_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_Benomyl_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/BenzoicAcid_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_BenzoicAcid_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/CV_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_CV_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/CaffeicAcid_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_CaffeicAcid_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/CinnamicAcid_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_CinnamicAcid_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/CoumaricAcid_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_CoumaricAcid_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/CoumaroylAmide_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_CoumaroylAmide_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/DMSO_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_DMSO_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/EMIMCl_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_EMIMCl_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/EtOH_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_EtOH_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/FerulicAcid_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_FerulicAcid_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/FeruloylAmide_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_FeruloylAmide_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/Furfural_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_Furfural_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/GVL_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_GVL_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/Isobutanol_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_Isobutanol_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/LevulinicAcid_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_LevulinicAcid_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/MBO_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_MBO_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/Methylglyoxal_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_Methylglyoxal_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/Mycobutanil_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_Mycobutanil_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/NAO_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_NAO_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/SinapicAcid_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_SinapicAcid_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/SodiumGlyoxylate_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_SodiumGlyoxylate_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/Syringaldehyde_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_Syringaldehyde_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/SyringicAcid_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_SyringicAcid_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/VanillicAcid_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_VanillicAcid_results.tsv", sep="\t", quote=FALSE)

df<-read.delim("raw_files/Vanillin_results.csv", header=TRUE, stringsAsFactors=FALSE)
df<- min_max_normalize_individual_raw_files(df)
write.table(df, "normalized_Vanillin_results.tsv", sep="\t", quote=FALSE)


