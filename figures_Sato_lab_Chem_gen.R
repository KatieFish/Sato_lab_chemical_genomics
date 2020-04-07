
##figure generation

FC_values<-Chem_gen_master_logFC_df
Tradeoff_pleiotropy_table$log_FC<-NA
for (i in 1:nrow(Tradeoff_pleiotropy_table)){
  Tradeoff_pleiotropy_table$log_FC[i]<- FC_values[which(FC_values$gene==Tradeoff_pleiotropy_table$Deletion[i]), which(colnames(FC_values)==Tradeoff_pleiotropy_table$Inhibitor[i])]
}

##add a boolean for whether or not deletion displays BOTH negative and positive log FC values
genes<-unique(as.character(Tradeoff_pleiotropy_table$Deletion))
Tradeoff_pleiotropy_table$mixed_direction_boolean<-NA
for (i in 1:length(genes)){
  gdf<- Tradeoff_pleiotropy_table[which(Tradeoff_pleiotropy_table$Deletion==genes[i]), ]
  pos<-0
  neg<-0
  for (j in 1:length(gdf$log_FC)){
    if (gdf$log_FC[j]>0){
      pos<-pos+1
  } else {
    neg<-neg+1
  }}
if (pos>0 && neg>0){
  Tradeoff_pleiotropy_table$mixed_direction_boolean[which(Tradeoff_pleiotropy_table$Deletion==genes[i])]<-TRUE
} else{
  Tradeoff_pleiotropy_table$mixed_direction_boolean[which(Tradeoff_pleiotropy_table$Deletion==genes[i])]<-FALSE
}
}
###


Tradeoff_pleiotropy_table$Deletion<-as.factor(Tradeoff_pleiotropy_table$Deletion)
Tradeoff_pleiotropy_table$Deletion <- reorder(Tradeoff_pleiotropy_table$Deletion, Tradeoff_pleiotropy_table$number_sig_conditions)
#library(ggplot2)
ggplot(Tradeoff_pleiotropy_table, aes(x=Deletion, y=log_FC, col=mixed_direction_boolean))+
  geom_point()+
  ylab("`significant` log FC values")+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5, size = 4))


