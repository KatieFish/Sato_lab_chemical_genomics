

#need Tradeoff_pleiotropy_table and Chem_gen_master_df

correlation_df<- data.frame(matrix(vector(), 0, 4,
                                   dimnames=list(c(), c("Inhibitor 1", "Inhibitor 2", "Pearson cor coef", "p value"))),
                            stringsAsFactors=F)

inhibs<- unique(Tradeoff_pleiotropy_table[,1])
for (i in 1:length(inhibs)){
  top_genes<- Tradeoff_pleiotropy_table[which(Tradeoff_pleiotropy_table[,1]==inhibs[i]), 3]
  tg_df<- Chem_gen_master_df[which(Chem_gen_master_df[,1] %in% top_genes), ]
  focal_col<- which(colnames(Chem_gen_master_df)==inhibs[i])
  for (j in 2:ncol(tg_df)){
    cor_j_i<- cor.test(x=tg_df[,focal_col], y=tg_df[,j], method=c("pearson"))
    vals<- data.frame(inhibs[i], colnames(tg_df)[j], cor_j_i$estimate, cor_j_i$p.value)
    colnames(vals)<-c("Inhibitor.1", "Inhibitor.2", "Pearson.cor.coef", "p.value")
    rownames(vals)<-NULL
    correlation_df<-rbind(correlation_df, vals)
  }
}

# ggscatter(data=tg_df, x="FerulicAcid", y="CoumaricAcid", col="red", size=2, add="reg.line",add.params = list(color = "blue", fill = "gray"),
          cor.coeff.args = list(method = "pearson", label.sep = "\n"), conf.int=TRUE, cor.coef=TRUE, cor.method="pearson")
