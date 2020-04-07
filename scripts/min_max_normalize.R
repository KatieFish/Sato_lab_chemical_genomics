

##normalization of Chem_gen_df by min max normalization
## all log fold changes are increased by the absolute value of 
## the lowest log fold change per inhibitor. The sum is then 
## divided by the maximum value of the new vector.

min_max_normalize<-function(Chem_gen_master_df){
normalized_Chem_gen_master_df<- Chem_gen_master_df
for (i in 2:ncol(df)){
  negmin<-min(na.omit(df[,i]))
  max<- max(na.omit(df[,i])) + abs(negmin)
  for (j in 1:nrow(df)){
  df[j,i]<-(df[j,i] + abs(negmin)) /max 
  }
}
return(normalized_Chem_gen_master_df)
}
  
