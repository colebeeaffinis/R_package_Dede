#'Multiply together two numbers
#'
#'@peram x A number
#'@peram y Another number
#'@return product The product of multiplying x and y
#'@usage
#'mult(4,5)
#'mult(3,5)

mult<-function(x,y){
  product<-x*y
  if(is.numeric(product)==FALSE)
  return("ERROR-non-numeric")
}
  return(product)
}