#'Plots a faceted histogram with multiple variable frequencies.
#'
#'@param dataset 
#'@param xcol A categorical column within the dataset to plot on the x axis
#'@param frqcol A categorical column to break up the different frequencies by
#'@param facetcol A categorical column to facet out the plots by
#'@return plot A faceted out muli-variable histogram color coded with a legend 
#'@usage
#'breakout.hist(gbutterflies,ColMonth,Species,Site)
#'@export

breakout_hist<-function(dataset,xcol,frqcol,facetcol){
  xcol <- enquo(xcol)
  frqcol <- enquo(frqcol)
  facetcol <- enquo(facetcol)
  plot<-ggplot(data=dataset,aes(x={{xcol}},color={{frqcol}}))+geom_histogram(stat="count")+facet_wrap(facets=vars({{facetcol}}))+theme(axis.text.x=element_text(angle=45,hjust=1))
  return(plot)
  if(is.ggplot(plot)==FALSE){
    return("Error-not-ggplot")
  }
}