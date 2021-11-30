#'Performs a hutcheson-T test for two samples of an abundance dataset
#'
#'@Param sample1 Vector of abundance for a sample
#'@Param sample2 Vector of abundance for another sample
#'@Usage
#'hutcheson_t(grouped_data$'1',grouped_data$'3')

hutcheson_t<-function(sample1,sample2){
 value<- Hutcheson_t_test(x={{sample1}},y={{sample2}},shannon.base = 10)
 return(value)
 if(is.list(value)==FALSE){
   return("Error-no-stats")
 }
}