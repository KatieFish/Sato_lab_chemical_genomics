#!/usr/bin/env Rscript

#merges each simulation iteration with an aggregate table


user_input=commandArgs(trailingOnly = TRUE)

i<- user_input[1]

sim_iteration<- read.delim("/home/GLBRCORG/kjfisher5/Sato_lab_chemical_genomics/simulations/simulation_iteration.tsv", header=TRUE, stringsAsFactors=FALSE)

all_sims<- read.delim("/home/GLBRCORG/kjfisher5/Sato_lab_chemical_genomics/simulations/simulation_running_master.tsv", header=TRUE, stringsAsFactors=FALSE)

df<- merge(all_sims, sim_iteration, by="x", all=TRUE)
colnames(df)[which(colnames(df)=="freq")]<-sprintf("Simulation_%d", i)


write.table(df, "/home/GLBRCORG/kjfisher5/Sato_lab_chemical_genomics/simulations/simulation_running_master.tsv", sep="\t", quote=FALSE)
