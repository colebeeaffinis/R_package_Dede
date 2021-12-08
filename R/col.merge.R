#'merges two columns into one.
#'
#'@param Dataset A dataset
#'@param col1 The first column you want to merge.
#'@param col2 The second column you want to merge.
#'@param newname The new name of the merged column
#'@return product A dataset like the input data set but with the two columns merged.
#'@usage
#'col.merge(gbutterflies,Scientific_name,Genus,Species)
#'@export
#'
col.merge<-function(dataset,newname,col1,col2){
  mergedata<-dataset %>% 
    unite({{newname}},{{col1}},{{col2}})
  if(is.data.frame(mergedata)==FALSE){
  return("Error-non-dataframe")
  }
  return(mergedata)
}
