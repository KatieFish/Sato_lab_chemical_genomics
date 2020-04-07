
#top up genes takes a list of the top significant genes from an inhibitor dataset 
# and identifies those that DECRASED significantly
top_down_genes<- function(inhibitor_df, top_genes){
  inhibitor_df->df
  rows<- which(inhibitor_df[,1] %in% top_genes)
  tg_df<- inhibitor_df[rows, ]
  top_down_genes<- list()
  for (i in 1:length(top_genes)){
    if (inhibitor_df[which(inhibitor_df[,1]==top_genes[i]), 2] < 0){
      top_down_genes<-append(top_down_genes, top_genes[i])
    }
  } 
  return(top_down_genes)
}