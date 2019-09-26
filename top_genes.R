

top_genes<- function(inhibitor_df){
inhibitor_df->df
row_int<- ceiling(nrow(df)*0.10)
df<- df[order(df$PValue), ]
df[1:row_int, 1]-> top_sig
df<-df[order(abs(df$logFC), decreasing = TRUE), ]
df[1:row_int, 1]-> top_logFC

top_genes<- top_sig[which(top_sig %in% top_logFC)]

return top_genes
}
