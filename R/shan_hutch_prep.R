#'turns a dataset into an abundance dataframe for Shannons index and Hutcheson-t test
#'
#'@Param dataset
#'@Param samplecol A column of samples you want to index
#'@Param speciescol A column of species
#'@return A dataset of abundances
#'@usage
#'shan_hutch_prep(gbutterflies,SITE,Species)

shan_hutch_prep<-function(dataset,samplecol,speciescol){
  grouped_data<-dataset %>% 
    group_by({{samplecol}},{{speciescol}}) %>% 
    count() %>% 
    summarize(Totalcount=sum(n)) %>% 
    spread({{samplecol}},Totalcount)
  if(is.data.frame(grouped_data)==FALSE){
    return(Error-no-dataframe)
  }
  return(grouped_data)
}