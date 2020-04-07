

#First pass just look for genes with both pos and neg sig logFC values

library(reshape2)
tradeoff_table<-melt(Chem_gen_sig_only_logFC_.005)
colnames(tradeoff_table)<-c("Deletion", "Inhibitor", "logFC")
tradeoff_table<-tradeoff_table[-which(is.na(tradeoff_table$logFC)), ]
max<-aggregate(na.omit(tradeoff_table$logFC), by=list(tradeoff_table$Deletion), FUN=max)
colnames(max)<-c("Deletion", "max_logFC")
tradeoff_table<-merge(tradeoff_table, max, by="Deletion", all=TRUE)
min<-aggregate(na.omit(tradeoff_table$logFC), by=list(tradeoff_table$Deletion), FUN=min)
colnames(min)<-c("Deletion", "min_logFC")
tradeoff_table<-merge(tradeoff_table, min, by="Deletion", all=TRUE)
tradeoff_table$largest_logFC_change<- tradeoff_table$max - tradeoff_table$min
hist(tradeoff_table$largest_logFC_change)
counts<-data.frame(table(tradeoff_table$Deletion))
colnames(counts)<-c("Deletion", "numb_sig_conditions")
tradeoff_table<-merge(tradeoff_table, counts, by="Deletion", all=TRUE)

library(RColorBrewer)
library(viridis)
library(ggsci)
library(ggplot2)
ggplot(tradeoff_table, aes(x=largest_logFC_change, group=factor(numb_sig_conditions)))+
  xlim(0.0001, 15)+
  xlab("Largest logFC difference across inhibitors")+
  ggtitle("Histogram of largest logFC tradeoff \nfor each individual significant (FDR<0.05) gene")+
  geom_dotplot(aes(col=numb_sig_conditions),fill="grey",  binwidth = .078)+
  scale_color_viridis(option = "D")+
  labs(col="Gene pleiotropy \n(no. significant conditions)")

write.table(tradeoff_table, "Significant_gene_tradeoff_table.tsv", sep="\t")
##the most pleiotropic genes also appear to have the largest tradeoffs between inhibitors. I'm not 
#sure that this is what one would naively expect. 

#get only those deletions with logFC tradeoffs greater than 10
tradeoff_table_super10<- tradeoff_table[which(tradeoff_table$largest_logFC_change>=10), ]
tradeoff_table_super10$Deletion<-reorder(tradeoff_table_super10$Deletion, tradeoff_table_super10$numb_sig_conditions)
tradeoff_table_super10<-tradeoff_table_super10[order(tradeoff_table_super10$Class), ]
tradeoff_table_super10$helpful_int<- c(1:nrow(tradeoff_table_super10))
tradeoff_table_super10$Inhibitor<-reorder(tradeoff_table_super10$Inhibitor, tradeoff_table_super10$helpful_int)


good.shapes = c(1:25,33:127)
N=16
nb<41
mycolors <- colorRampPalette(brewer.pal(8, "Set1"))(41)

ggplot(tradeoff_table_super10, aes(x=Deletion, y=logFC, shape=Class, col=Inhibitor))+
  geom_point(size=3)+
  xlab("Significant deletion w/ logFC tradeoff of >=10 across conditions")+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5))+
  ggtitle("Distributions of significant logFC values for deletions
          with >=10 logFC difference across inhibitors")+
  scale_shape_manual(values=good.shapes[1:N])+
  scale_color_manual(values=mycolors)


for (i in 1:nrow(Chem_gen_master_SIG_logFC_df)){
  fcs<- na.omit(as.numeric(Chem_gen_master_SIG_logFC_df[i, 2:43]))
  neg<-FALSE
  pos<-FALSE
  if(length(which(fcs<0))>0){
    neg<-TRUE
  } 
  if (length(which(fcs>0))>0){
    pos<-TRUE
  }
  if(pos==TRUE & neg==TRUE){
    tradeoff_table$bothdirections<-TRUE
  }else{
    tradeoff_table$bothdirections<-FALSE
  }
  tradeoff_table$largest_span[i]<- abs(max(fcs) - min(fcs))
  }

tradeoff_table<-tradeoff_table[order(tradeoff_table$largest_span, decreasing=TRUE), ]
top_tradeoffs<-tradeoff_table[which(tradeoff_table$largest_span>=10), ]
top_tradeoffs<-Chem_gen_master_SIG_logFC_df[which(Chem_gen_master_SIG_logFC_df$gene %in% top_tradeoffs$gene), ]

top_tradeoff_inhibs<-top_tradeoffs[1]
top_tradeoff_inhibs$min_FC_val<-NA
top_tradeoff_inhibs$max_FC_val<-NA

for(i in 1:nrow(top_tradeoffs)){
  fcs<- na.omit(as.numeric(top_tradeoffs[which(top_tradeoff_inhibs$gene[i]==top_tradeoffs$gene), 2:43]))
  top_tradeoff_inhibs$min_FC_val[i]<-colnames(top_tradeoffs)[which(top_tradeoffs[i,]==min(fcs))]
  top_tradeoff_inhibs$max_FC_val[i]<-colnames(top_tradeoffs)[which(top_tradeoffs[i,]==max(fcs))]
}

tops<-tradeoff_table[which(tradeoff_table$largest_span>=10), c(1,3)]
top_tradeoff_inhibs<-merge(top_tradeoff_inhibs, tops, by="gene")
top_tradeoff_inhibs$ID<-paste(pmin(top_tradeoff_inhibs$min_FC_val, top_tradeoff_inhibs$max_FC_val),
      pmax(top_tradeoff_inhibs$min_FC_val, top_tradeoff_inhibs$max_FC_val),
      sep="_")

ggplot(top_tradeoff_inhibs, aes(x=ID))+
  geom_bar()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5))
  


#############################################################################

#need logFC table of ONLY significant gene logFC values (all others are replaced by NA)
#Chem_gen_sig_only_logFC_.005 is the name of that table
#Also need inhibitor class categories file

#removing genes that are significant only once
(Chem_gen_sig_only_logFC_.005)
remove_vec<-as.numeric(list())
for(i in 1:nrow(Chem_gen_sig_only_logFC_.005)){
  vec<-Chem_gen_sig_only_logFC_.005[i, 2:ncol(Chem_gen_sig_only_logFC_.005)]
  sigs<- length(which(!is.na(vec)))
  if(sigs<2){
    remove_vec<-append(remove_vec, i)
  }
}
Chem_gen_sig_only_logFC_.005_sig2plus<-Chem_gen_sig_only_logFC_.005[-remove_vec, ]
# 339 genes present only once, these are removed

#next I will create all possible combinations of inhibitors
library(plyr)
all_inh_comb<- combn(Inhibitor_class_categories$Inhibitor, 2, simplify=FALSE)
all_inh_comb <-data.frame(matrix(unlist(all_inh_comb),nrow=length(all_inh_comb), byrow=T), stringsAsFactors=FALSE)
all_inh_comb$Inhibitor_comparison<-paste(pmin(all_inh_comb$X1, all_inh_comb$X2), pmax(all_inh_comb$X1, all_inh_comb$X2))
#all_inh_comb<-all_inh_comb[3]

#setting up dataframe for final data
Inhibitor_tradeoff_table = data.frame(matrix(vector(), 0, 5,
                                             dimnames=list(c(), c("Deletion", "I1","I2","Inhibitor_comparison","logFC_tradeoff"))),
                                      stringsAsFactors=F)
for (gene in 1:nrow(Chem_gen_sig_only_logFC_.005_sig2plus)){
  #for each gene
  gene_table<-data.frame(rep(Chem_gen_sig_only_logFC_.005$gene[gene], length(all_inh_comb)), all_inh_comb[1:3])
  colnames(gene_table)<-c("Deletion", "I1", "I2", "Inhibitor_comparison")
  gene_table$logFC_tradeoff<-NA
  for(comp in 1:nrow(gene_table)){
    #for each pairwise inhibitor comparison  
    I1<-gene_table$I1[comp]
    I2<-gene_table$I2[comp]
    gene_table$logFC_tradeoff[comp]<-abs(Chem_gen_sig_only_logFC_.005_sig2plus[gene, which(colnames(Chem_gen_sig_only_logFC_.005)==I1)] -
                                           Chem_gen_sig_only_logFC_.005_sig2plus[gene, which(colnames(Chem_gen_sig_only_logFC_.005_sig2plus)==I2)])
  }
  gene_table<-gene_table[which(!is.na(gene_table$logFC_tradeoff)), ]
  Inhibitor_tradeoff_table<-rbind(Inhibitor_tradeoff_table, gene_table)
}
write.table(Inhibitor_tradeoff_table, "Inhibitor_Inhibitor_tradeoff_table_by_sig_gene.tsv", sep="\t")
#This gives me a table of 77,103 observations of tradeoffs between significant genes. 
#before I do anything with it, I'm going to check the data

boxplot(logFC_tradeoff ~ Inhibitor_comparison, data=Inhibitor_tradeoff_table)
#test for homogeneity of variances: Fligner-Killeen
fligner.test(logFC_tradeoff ~ Inhibitor_comparison, data=Inhibitor_tradeoff_table)
#Fligner-Killeen:med chi-squared = 13126, df = 546, p-value < 2.2e-16
#homogeneity of variances violated
hist(Inhibitor_tradeoff_table$logFC_tradeoff, breaks=1000)
#data is not normal. 
#Kruskal-Wallis rank sum test
kruskal.test(logFC_tradeoff ~ Inhibitor_comparison, data=Inhibitor_tradeoff_table)
#Kruskal-Wallis chi-squared = 18868, df = 546, p-value < 2.2e-16
fit<- glm(logFC_tradeoff ~ Inhibitor_comparison, data=Inhibitor_tradeoff_table, family=Gamma()) 
