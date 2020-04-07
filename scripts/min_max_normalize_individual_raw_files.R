

##normalization of Chem_gen_df by min max normalization
## all log fold changes are increased by the absolute value of 
## the lowest log fold change per inhibitor. The sum is then 
## divided by the maximum value of the new vector.

min_max_normalize_individual_raw_files<-function(Individual_raw_file){
df<- fix_dfs(Individual_raw_file) #function cleans up table and seperates barcode and gene

negmin<-min(na.omit(df$logFC))
max<- max(na.omit(df$logFC) + abs(negmin))
for (j in 1:nrow(df)){
  df$logFC[j]<-(df$logFC[j] + abs(negmin)) /max 
  }
  
return(df)
}
  
