#'Plots a faceted histogram with multiple variable frequencies.
#'
#'@peram dataset 
#'@peram xcol A categorical column within the dataset to plot on the x axis
#'@peram frqcol A categorical column to break up the different frequencies by
#'@peram facetcol A categorical column to facet out the plots by
#'@return plot A faceted out muli-variable histogram color coded with a legend 
#'@usage
#'breakout.hist(Butterflies_dataset,Month,Species,Site)

breakout.hist<-function(dataset,xcol,frqcol,facetcol){
  plot<-ggplot(data=dataset,aes(x=xcol,color=frqcol))+geom_histogram(stat=count)+facet_wrap(facets=vars(facetcol))
  if(is.ggplot(plot))==FALSE
  return("Error-not-ggplot")
  }
  return(plot)
}