fix_dfs<-function(inhibitor_df){
colnames(inhibitor_df)[1]<-"gene"
for (i in 1:nrow(inhibitor_df)){
  gene<- strsplit(as.character(inhibitor_df[i,1]), "_")
  inhibitor_df[i,1]<-gene[[1]][1]
}
return(inhibitor_df)
}
