

library(dplyr)
# user_input is the results of the simulations
user_input=commandArgs(trailingOnly = TRUE)

df<- user_input[1]

#25 is the maximum for the real data, so I'll track how many times 
#genes are nominally significant at integers from 1 to 25. 
gene_repeats_in_simulations<-data.frame(c(1:25),
                              rep(0, 25),
                              rep(0,25))
colnames(gene_repeats_in_simulations)<-c("Integer of repeats (n)", "Simulations with n present", "Total genes with n values")

for (i in 2:ncol(df)){
  x<-count(na.omit(df[i]))
  for (j in 1:nrow(gene_repeats_in_simulations)){
    for (h in 1:nrow(x)){
    if(gene_repeats_in_simulations[j,1]==x[h,1]){
    gene_repeats_in_simulations[j,2]<-gene_repeats_in_simulations[j,2]+ 1
    gene_repeats_in_simulations[j,3]<-gene_repeats_in_simulations[j,3]+x[h,2]
  }
}
}}
