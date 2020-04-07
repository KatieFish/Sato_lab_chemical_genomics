#!/usr/bin/env Rscript

source("scripts/min_max_normalize_individual_~/Sato_lab_chemical_genomics/raw_data.R")
source("scripts/fix_dfs.R")


df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/22Dipyridyl.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"22Dipyridyl"
mdf<-df
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/24Dimethylimidazole.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"24Dimethylimidazole"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#


df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/26Dimethylpyrazine.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"26Dimethylpyrazine"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/2Methylimidazole.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"2Methylimidazole"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#


df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/45Methylimidazole.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"45Methylimidazole"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/4OHAcetophenone.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"4OHAcetophenone"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#


df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/4OHBenzaldehyde.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"4OHBenzaldehyde"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/4OHBenzoicAcid.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"4OHBenzoicAcid"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/5HMF.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"5HMF"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/Acetamide.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"Acetamide"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/AcetoSyringone.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"AcetoSyringone"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/Acetovanillone.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"Acetovanillone"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/AzelaicAcid.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"AzelaicAcid"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/BMIMCl.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"BMIMCl"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/Benomyl.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"Benomyl"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/BenzoicAcid.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"BenzoicAcid"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/CV.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"CV"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/CaffeicAcid.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"CaffeicAcid"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/CinnamicAcid.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"CinnamicAcid"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/CoumaricAcid.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"CoumaricAcid"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/CoumaroylAmide.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"CoumaroylAmide"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/DMSO.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"DMSO"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/EMIMCl.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"EMIMCl"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/EtOH.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"EtOH"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/FerulicAcid.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"FerulicAcid"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/FeruloylAmide.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"FeruloylAmide"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/Furfural.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"Furfural"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/GVL.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"GVL"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/Isobutanol.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"Isobutanol"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/LevulinicAcid.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"LevulinicAcid"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/MBO.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"MBO"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/Methylglyoxal.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"Methylglyoxal"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/Mycobutanil.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"Mycobutanil"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/NAO.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"NAO"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/SinapicAcid.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"SinapicAcid"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/SodiumGlyoxylate.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"SodiumGlyoxylate"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/Syringaldehyde.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"Syringaldehyde"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/SyringicAcid.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"SyringicAcid"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/VanillicAcid.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"VanillicAcid"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/Vanillin.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"Vanillin"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/SodiumAcetate.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"SodiumAcetate"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

df<-read.delim("~/Sato_lab_chemical_genomics/raw_data/SodiumButyrate.tsv", header=TRUE, stringsAsFactors=FALSE)
df<-df[1:2]
colnames(df)[2]<-"SodiumButyrate"
mdf<-merge(mdf, df, by="gene", all=TRUE)
#

