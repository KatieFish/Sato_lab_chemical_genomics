

#need Tradeoff_pleiotropy_table and Chem_gen_master_logFC_df
#Have to fix colnames first :/
colnames(Chem_gen_master_logFC_df)[which(colnames(Chem_gen_master_logFC_df)=="X22Dipyridyl")]<-"22Dipyridyl"       
colnames(Chem_gen_master_logFC_df)[which(colnames(Chem_gen_master_logFC_df)=="X24Dimethylimidazole")]<-"24Dimethylimidazole"
colnames(Chem_gen_master_logFC_df)[which(colnames(Chem_gen_master_logFC_df)=="X26Dimethylpyrazine" )]<-"26Dimethylpyrazine"
colnames(Chem_gen_master_logFC_df)[which(colnames(Chem_gen_master_logFC_df)=="X2Methylimidazole")]<- "2Methylimidazole"
colnames(Chem_gen_master_logFC_df)[which(colnames(Chem_gen_master_logFC_df)=="X45Methylimidazole")]<- "45Methylimidazole"  
colnames(Chem_gen_master_logFC_df)[which(colnames(Chem_gen_master_logFC_df)=="X4OHAcetophenone")]<-"4OHAcetophenone"
colnames(Chem_gen_master_logFC_df)[which(colnames(Chem_gen_master_logFC_df)=="X4OHBenzaldehyde")]<- "4OHBenzaldehyde"   
colnames(Chem_gen_master_logFC_df)[which(colnames(Chem_gen_master_logFC_df)=="X4OHBenzoicAcid")]<-"4OHBenzoicAcid"
colnames(Chem_gen_master_logFC_df)[which(colnames(Chem_gen_master_logFC_df)=="X5HMF")]<- "5HMF"


#Running pairwise correllations for each inhibitor's significant deletions against the logFC for those
#deletions in all other conditions ("one" way comparisons)
correlation_df<- data.frame(matrix(vector(), 0, 4,
                                   dimnames=list(c(), c("Inhibitor 1", "Inhibitor 2", "Pearson cor coef", "p value"))),
                            stringsAsFactors=F)

inhibs<- unique(Tradeoff_pleiotropy_table$Inhibitor)
for (i in 1:length(inhibs)){
  top_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor==inhibs[i])]
  tg_df<- Chem_gen_master_logFC_df[which(Chem_gen_master_logFC_df$gene %in% top_genes), ]
  focal_col<- which(colnames(Chem_gen_master_logFC_df)==inhibs[i])
  for (j in 2:ncol(tg_df)){
    cor_j_i<- cor.test(x=tg_df[,focal_col], y=tg_df[,j], method=c("pearson"))
    vals<- data.frame(inhibs[i], colnames(tg_df)[j], cor_j_i$estimate, cor_j_i$p.value)
    colnames(vals)<-c("Inhibitor.1", "Inhibitor.2", "Pearson.cor.coef", "p.value")
    rownames(vals)<-NULL
    correlation_df<-rbind(correlation_df, vals)
  }
}
#performing bonferroni corrections and selecting only those comparisons for which 
#both inhib-inhib correllations were p<.001
correlation_df$Bonf_corrected_p.value<- p.adjust(correlation_df$p.value, method="bonferroni")
significant_correlations<- correlation_df[which(correlation_df$Bonf_corrected_p.value<=0.001), ]
significant_correlations[,1]<-as.character(significant_correlations[,1])
significant_correlations[,2]<-as.character(significant_correlations[,2])
significant_correlations$comparison<-paste(pmin(significant_correlations$Inhibitor.1, significant_correlations$Inhibitor.2),
                                                               pmax(significant_correlations$Inhibitor.1, significant_correlations$Inhibitor.2),
                                                               sep="_")
recip_significant_correlations<- significant_correlations[which(duplicated(significant_correlations$comparison)), ]
recip_significant_correlations<-recip_significant_correlations[order(recip_significant_correlations$Pearson.cor.coef), ]

library(ggplot2)
library(ggpubr)



## for those pairwise inhibs for which both correllations were significant,
#getting all log fold changes, not just unidirectional. Rerunning correlations. 
significant_correlation_table<-recip_significant_correlations[1:2]
significant_correlation_table$"Pearson.cor.coef"<-NA
significant_correlation_table$"p.value"<-NA
for(i in 1:nrow(recip_significant_correlations)){
  inhib1<- recip_significant_correlations[i,1]
  inhib2<- recip_significant_correlations[i,2]
  top_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor==inhib1 |Tradeoff_pleiotropy_table$Inhibitor==inhib2)]
  tgdf<- Chem_gen_master_logFC_df[which(Chem_gen_master_logFC_df$gene %in% top_genes), ]
  colnames(tgdf)[which(colnames(tgdf)==inhib1)]<-"col1"
  colnames(tgdf)[which(colnames(tgdf)==inhib2)]<-"col2"
  cor_j_i<- cor.test(x=tgdf$col1, y=tgdf$col2, method=c("pearson"))
  significant_correlation_table$Pearson.cor.coef[i]<-cor_j_i$estimate
  significant_correlation_table$p.value[i]<-cor_j_i$p.value
}
significant_correlation_table$Bonf_corrected_p.value<- p.adjust(significant_correlation_table$p.value, method="bonferroni")


# histogram of the correlation coefficients 
ggplot(significant_correlation_table, aes(Pearson.cor.coef))+
  geom_histogram(bins=40, fill="darkblue")+
  xlab("Pearson correlation coefficient")+
  ylab("Number of comparisons")+
  xlim(-1.0, 1.0)+
  ylim(0,20)+
  ggtitle("Distribution of Pearson coefficients for 56 significant \ninhibitor - inhibitor correlations (p.adj<0.001)")+
  theme_bw()
quartz.save("Significant_Pearson_distribution.jpg", type="jpg")

#Looking amongst classes of inhibitors. 
#Binning pairwise correlations by class of inhibitor
significant_correlation_table$Inhib1class<-NA
significant_correlation_table$Inhib2class<-NA
z<-significant_correlation_table
for(i in 1:2){
  for(j in 1:nrow(z)){
  x<- which(Inhibitor_class_categories[,1]==z[j,i])
  z[j,i+5]<-Inhibitor_class_categories[x,2]
  }
}
significant_correlation_table<-z
significant_correlation_table$ID<-paste(significant_correlation_table$Inhib1class, significant_correlation_table$Inhib2class, sep=" - ")
significant_correlation_table<-significant_correlation_table[-c(6,7)]

#x<-which(significant_correlation_table$Inhibitor.1==significant_correlation_table$Inhibitor.2)
#y<-which(!significant_correlation_table$Inhibitor.1==significant_correlation_table$Inhibitor.2)
#significant_correlation_table$class_comparison<-NA
#significant_correlation_table[x]<-"Intraclass"
#significant_correlation_table[y]<- "Interclass"

interclass_cor<-class_binned_correlations[which(class_binned_correlations$class_comparison=="Interclass"), ]
interclass_cor$ID<- paste(pmin(interclass_cor$Inhibitor.1, interclass_cor$Inhibitor.2), pmax(interclass_cor$Inhibitor.1, interclass_cor$Inhibitor.2), sep=" - ")
interclass_cor$sign<-interclass_cor$Pearson.cor.coef<0
comps<- data.frame(unique(interclass_cor$ID))
for(i in 1:nrow(comps)){
  x<- interclass_cor[which(interclass_cor$ID==comps[i,1]), 8]
  if (length(unique(x))==1) {
    comps[i,2]<-"same"
  }else{
    comps[i,2]<-"mixed"
  }
  }
colnames(comps)<-c("ID", "all_same")
interclass_cor<-merge(interclass_cor, comps, by="ID")



intraclass_cor<-class_binned_correlations[which(class_binned_correlations$class_comparison=="Intraclass"), ]

library(directlabels)
ggplot(interclass_cor, aes(y=ID, x=Pearson.cor.coef, col=all_same))+
  geom_point()+
  ylab("")+
  xlab("Pearson correlation coefficient")+
  theme(legend.position = "none")+
  xlim(-1, 1)+
  ggtitle("Significant inter-class inhibitor correlations")+
  geom_dl(aes(label = obs_pos), method = list(dl.trans(x=x+.5), dl.combine("last.points"), cex = 0.9, col="black"))



a<-ggplot(interclass_cor, aes(Pearson.cor.coef))+
  geom_histogram(bins=40, fill="darkblue")+
  xlab("Pearson correlation coefficient")+
  ylab("Number of comparisons")+
  xlim(-1.0, 1.0)+
  ylim(0,20)+
  ggtitle("Distribution of Pearson coefficients for 41 significant \ninterclass inhibitor - inhibitor correlations")+
  theme_bw()
b<-ggplot(intraclass_cor, aes(Pearson.cor.coef))+
  geom_histogram(bins=40, fill="darkblue")+
  xlab("Pearson correlation coefficient")+
  ylab("Number of comparisons")+
  xlim(-1.0, 1.0)+
  ylim(0,20)+
  ggtitle("Distribution of Pearson coefficients for 15 significant \nintraclass inhibitor-inhibitor correlations")+
  theme_bw()

grid.arrange(a,b, nrow=1)


significant_correlation_table<-significant_correlation_table[which(significant_correlation_table$Pearson.cor.coef<0), ]
significant_correlation_table<-significant_correlation_table[order(significant_correlation_table$Bonf_corrected_p.value), ]
significant_correlation_table<-significant_correlation_table[order(significant_correlation_table$p.value), ]

#just neg corrs
plots<-list()
for(i in 1:6){
  inhib1<- as.character(significant_correlation_table[i,1])
  inhib2<- as.character(significant_correlation_table[i,2])
  top_genes<-as.character(Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor==inhib1 |Tradeoff_pleiotropy_table$Inhibitor==inhib2)])
  tgdf<- Chem_gen_master_logFC_df[which(Chem_gen_master_logFC_df$gene %in% top_genes), ]
  colnames(tgdf)[which(colnames(tgdf)==inhib1)]<-"col1"
  colnames(tgdf)[which(colnames(tgdf)==inhib2)]<-"col2"
  plotx<-ggscatter(data=tgdf, x="col1", y="col2",
                   col="red", size=2, add="reg.line",add.params = list(color = "blue", fill = "gray"), title=significant_correlation_table$ID[i],
                   cor.coeff.args = list(method = "pearson", label.sep = "\n"), conf.int=TRUE, cor.coef=TRUE, cor.method="pearson",
                   xlab=sprintf("%s normalized log fold change", inhib1), ylab=sprintf("%s normalized log fold change", inhib2))
  plot_name <- paste0("plotx",i)
  plots[[plot_name]] <- plotx
}

library(gridExtra)
pdf("All_negative_significant_inhibitor-inhibitor_cor.pdf", height =11, width=8)
grid.arrange(plots[[1]],plots[[2]], plots[[3]],plots[[4]], plots[[5]],plots[[6]])
dev.off()
















##all 56 corrs
plots<-list()
for(i in 1:56){
  inhib1<- as.character("CV")
  inhib2<- as.character("22Dipyridyl")
  top_genes<-as.character(Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor==inhib1 |Tradeoff_pleiotropy_table$Inhibitor==inhib2)])
  tgdf<- Chem_gen_master_logFC_df[which(Chem_gen_master_logFC_df$gene %in% top_genes), ]
  colnames(tgdf)[which(colnames(tgdf)==inhib1)]<-"col1"
  colnames(tgdf)[which(colnames(tgdf)==inhib2)]<-"col2"
  plotx<-ggscatter(data=tgdf, x="col1", y="col2",
            col="red", size=2, add="reg.line",add.params = list(color = "blue", fill = "gray"), title="CV - 22Dipyridyl",
            cor.coeff.args = list(method = "pearson", label.sep = "\n"), conf.int=TRUE, cor.coef=TRUE, cor.method="pearson",
            xlab=sprintf("%s normalized log fold change", inhib1), ylab=sprintf("%s normalized log fold change", inhib2))
    plot_name <- paste0("plotx",i)
  plots[[plot_name]] <- plotx
}

library(gridExtra)
pdf("All_significant_inhibitor-inhibitor_cor.pdf", height = 100, width=30)
grid.arrange(plots[[1]],plots[[2]], plots[[3]],plots[[4]], plots[[5]],plots[[6]], plots[[7]],plots[[8]],
             plots[[9]],plots[[10]], plots[[11]],plots[[12]],plots[[13]],plots[[14]], plots[[15]],plots[[16]],
             plots[[17]],plots[[18]], plots[[19]],plots[[20]],plots[[21]],plots[[22]], plots[[23]],plots[[24]], plots[[25]],plots[[26]], plots[[27]],plots[[28]],
             plots[[29]],plots[[30]], plots[[31]],plots[[32]],plots[[33]],plots[[34]], plots[[35]],plots[[36]],
             plots[[37]],plots[[38]], plots[[39]],plots[[40]], plots[[41]],plots[[42]], plots[[43]],plots[[44]], plots[[45]],plots[[46]], plots[[47]],plots[[48]],
             plots[[49]],plots[[50]], plots[[51]],plots[[52]],plots[[53]],plots[[54]], plots[[55]],plots[[56]], nrow=20)
dev.off()

#Genes driving Phenolic acid - Iron chelator response
Dipyridyl_down_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor=="22Dipyridyl" & Tradeoff_pleiotropy_table$Direction=="down")]
Dipyridyl_up_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor=="22Dipyridyl" & Tradeoff_pleiotropy_table$Direction=="up")]
FerulicAcid_down_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor=="FerulicAcid" & Tradeoff_pleiotropy_table$Direction=="down")]
FerulicAcid_up_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor=="FerulicAcid" & Tradeoff_pleiotropy_table$Direction=="up")]
SinapicAcid_down_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor=="SinapicAcid" & Tradeoff_pleiotropy_table$Direction=="down")]
SinapicAcid_up_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor=="SinapicAcid" & Tradeoff_pleiotropy_table$Direction=="up")]
CoumaricAcid_down_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor=="CoumaricAcid" & Tradeoff_pleiotropy_table$Direction=="down")]
CoumaricAcid_up_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor=="CoumaricAcid" & Tradeoff_pleiotropy_table$Direction=="up")]

Shared_phenolic_acid_up<- FerulicAcid_up_genes[which(FerulicAcid_up_genes %in% SinapicAcid_up_genes)]
Shared_phenolic_acid_up<- Shared_phenolic_acid_up[which(Shared_phenolic_acid_up %in% CoumaricAcid_up_genes)]

Phenolic_up_Iron_chelator_down<- Shared_phenolic_acid_up[which(Shared_phenolic_acid_up %in% Dipyridyl_down_genes)]

Shared_phenolic_acid_down<-FerulicAcid_down_genes[which(FerulicAcid_down_genes %in% SinapicAcid_down_genes)]
Shared_phenolic_acid_down<- Shared_phenolic_acid_down[which(Shared_phenolic_acid_down %in% CoumaricAcid_down_genes)]

Phenolic_down_Iron_chelator_up<- Shared_phenolic_acid_down[which(Shared_phenolic_acid_down %in% Dipyridyl_up_genes)]

#driven by deletions that are resistant in phenolic acid but sensitive in 22Dipryidyl

FeruloylAmide_down_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor=="FeruloylAmide" & Tradeoff_pleiotropy_table$Direction=="down")]
FeruloylAmide_up_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor=="FeruloylAmide" & Tradeoff_pleiotropy_table$Direction=="up")]
CoumaroylAmide_down_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor=="CoumaroylAmide" & Tradeoff_pleiotropy_table$Direction=="down")]
CoumaroylAmide_up_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor=="CoumaroylAmide" & Tradeoff_pleiotropy_table$Direction=="up")]

Shared_phenolic_amide_down<-FeruloylAmide_down_genes[which(FeruloylAmide_down_genes %in% CoumaroylAmide_down_genes)]
Phenolicamide_down_Iron_chelator_up<- Shared_phenolic_amide_down[which(Shared_phenolic_amide_down %in% Dipyridyl_up_genes)]

Shared_phenolic_amide_up<-FeruloylAmide_up_genes[which(FeruloylAmide_up_genes %in% CoumaroylAmide_up_genes)]
Phenolicamide_up_Iron_chelator_down<- Shared_phenolic_amide_up[which(Shared_phenolic_amide_up %in% Dipyridyl_down_genes)]


EMIMCl_down_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor=="EMIMCl" & Tradeoff_pleiotropy_table$Direction=="down")]
EMIMCl_up_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor=="EMIMCl" & Tradeoff_pleiotropy_table$Direction=="up")]
VanillicAcid_down_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor=="VanillicAcid" & Tradeoff_pleiotropy_table$Direction=="down")]
VanillicAcid_up_genes<- Tradeoff_pleiotropy_table$Deletion[which(Tradeoff_pleiotropy_table$Inhibitor=="VanillicAcid" & Tradeoff_pleiotropy_table$Direction=="up")]

Em_up_Van_down<-EMIMCl_up_genes[which(EMIMCl_up_genes %in% VanillicAcid_down_genes)]
Van_up_Em_down<- EMIMCl_down_genes[which(EMIMCl_down_genes %in% VanillicAcid_up_genes)]
