
library(factoextra)
library(pheatmap)
##

Chem_gen_cluster_heatmap<-function(master_foldchange_df){
  df<- na.omit(df)
  rownames(df)<- df[,1]
  df<- df[-1]
 
  #cluster based on euclidean distance matrix and produce heatmap
  pheatmap(df, cluster_rows = TRUE, cluster_cols = TRUE, method="manhattan", show_rownames=FALSE)
  fviz_nbclust(df, kmeans, method = c("wss"), k.max = 100)
  dist_df<- dist(df, method="manhattan")
  inhib_clusts<- hclust(dist_df, method="complete")
  clust <- cutree(inhib_clusts, k = 2)
  fviz_cluster(list(data = df, cluster = clust))
  
  #examine inhibitor clustering
  trns_df<- t(df)
  # use nbclust to determine the optimal number of clusters
  fviz_nbclust(trns_df, kmeans, method = c("silhouette"))
  dist_trns_df<- dist(trns_df, method="manhattan")
  inhib_clusts<- hclust(dist_trns_df, method="complete")
  clust <- cutree(inhib_clusts, k = 5)
  fviz_cluster(list(data = trns_df, cluster = clust))  ## from ‘factoextra’ package
}