#'Performs a hutcheson-T test for two samples of an abundance dataset
#'
#'@param sample1 Vector of abundance for a sample
#'@param sample2 Vector of abundance for another sample
#'@usage
#'hutcheson_t(grouped_data$'1',grouped_data$'3')
#'@export
hutcheson_t<-function(sample1,sample2){
 value<- Hutcheson_t_test(x={{sample1}},y={{sample2}},shannon.base = 10)
 return(value)
 if(is.list(value)==FALSE){
   return("Error-no-stats")
 }
}