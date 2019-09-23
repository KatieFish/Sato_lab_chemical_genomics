
library(factoextra)
library(pheatmap)
##

Chem_gen_cluster_heatmap<-function(master_foldchange_df){
  df<- na.omit(master_foldchange_df)
  rownames(df)<- df[,1]
  df<- df[-1]
 
  #cluster based on euclidean distance matrix and produce heatmap
  pheatmap(df, cluster_rows = TRUE, cluster_cols = TRUE, method="euclidean", show_rownames=FALSE)
  
  #examine inhibitor clustering
  trns_df<- t(df)
  # use nbclust to determine the optimal number of clusters
  fviz_nbclust(trns_df, kmeans, method = c("silhouette"))
  dist_trns_df<- dist(trns_df, method="euclidean")
  inhib_clusts<- hclust(dist_trns_df, method="complete")
  clust <- cutree(inhib_clusts, k = 5)
  fviz_cluster(list(data = trns_df, cluster = clust))  ## from ‘factoextra’ package
}