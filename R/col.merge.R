#'merges two columns into one.
#'
#'@Param Dataset
#'@Param col1 The first column you want to merge.
#'@Param col2 The second column you want to merge.
#'@Param newname The new name of the merged column
#'@return product A dataset like the input data set but with the two columns merged.
#'@Usage
#'col.merge(gbutterflies,Scientific_name,Genus,Species)

col.merge<-function(dataset,newname,col1,col2){
  mergedata<-dataset %>% 
    unite({{newname}},{{col1}},{{col2}})
  if(is.data.frame(mergedata)==FALSE){
  return("Error-non-dataframe")
  }
  return(mergedata)
}
