
inhibitor_name<- "2Methylimidazole"

make_volcano<-function(top_genes, inhibitor_df, inhibitor_name){
  
  inhibitor_df->df
  sum_top_genes<- length(top_genes)
pdf(sprintf("%s_volcano.pdf", inhibitor_name), height = 3.5, width = 4)
par(mar=c(4.25,4.25,1,1))
 plot(df[,2], -log10(df[, 5]), col="lightgrey", pch=20, xlim=c(min(df[,2]), max(df[,2])), ylim=c(min(-log10(df[,5])),
      max(-log10(df[,5]))), xlab="log fold change", ylab="-log P-value", cex.lab=.7, cex.axis=.6)
par(new=T)
  plot(df[which(df[,1] %in% top_genes), 2], -log10(df[which(df[,1] %in% top_genes), 5]), col="red", xlim=c(min(df[,2]), max(df[,2])),
       ylim=c(min(-log10(df[,5])), max(-log10(df[,5]))), xaxt='n', yaxt='n', xlab=NA, ylab=NA, lwd=2,
       main= sprintf("%s \n%d significant genes", inhibitor_name, sum_top_genes),adj=.01, line=-1.5, cex.main=.7)
dev.off()
}
  