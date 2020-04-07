

#going to look for functional modules using the mutual information method 
#from Fisher, Kryazhimskiy, and Lang. Looking for networks of deletions 
#that are together more often than we expect by chance. Maybe first I caluclate MI? 
#I have to turn the df into a binary matrix. I'm only going to use genes that show up 
# 10 times or more. 


library(plyr)

#trim master dataframe to only those genes that show up 10 times or more
freq_table<-count(Tradeoff_pleiotropy_table[,3])
ten_or_more_list<-freq_table[which(freq_table[,2]>9), 1]
ten_or_more_df<- Chem_gen_master_df[which(Chem_gen_master_df[,1] %in% ten_or_more_list), ]

#Change to binary

binary_ten_or_more_dataframe<-ten_or_more_df
for (i in 1:nrow(ten_or_more_df)){
  gene<-ten_or_more_df[i,1]
  inhibs<-unique(Tradeoff_pleiotropy_table[which(gene == Tradeoff_pleiotropy_table[,3]), 1])
 for (j in 2:ncol(ten_or_more_df)){
   if (colnames(ten_or_more_df)[j] %in% inhibs){
     binary_ten_or_more_dataframe[i,j]<- 1
   }else {
     binary_ten_or_more_dataframe[i,j]<-0
   }
 } 
}
rownames(binary_ten_or_more_dataframe)<-binary_ten_or_more_dataframe[,1]
binary_ten_or_more_dataframe<-binary_ten_or_more_dataframe[-1]

