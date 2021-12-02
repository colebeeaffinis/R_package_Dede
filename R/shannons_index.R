#'plots a dataset of shannons indexes
#'
#'@param dataset A dataframe of abundances
#'@return  A plot of different shannons indexes
#'@usage
#'shannons_index(grouped_data)

shannons_index<-function (dataset){
 dataset[is.na(dataset)]=0
 select_data<-dataset[2:7]
 dataframe<-as.data.frame(select_data)
 rownames(dataframe) = dataframe$Species
 if(is.data.frame(dataframe)==FALSE){
   return("Error-not-a-dataframe")
 }
 hill_num<-iNEXT(dataframe,q=1,datatype="abundance")
 plot<-ggiNEXT(hill_num)+theme(legend.position="right")+theme_classic()
 return(plot)
}
