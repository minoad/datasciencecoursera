corr <- function(directory, threshold = 0) {
  x<-vector("numeric")
  for (i in paste(sep="",directory,"/",(filenames <- list.files(directory)))) {  
    if (nrow(na.omit(read.csv(header=TRUE, file = i))["sulfate"])>=threshold){
      x<-round(c(x,  cor(na.omit(read.csv(header=TRUE, file = i))["sulfate"],nit<-na.omit(read.csv(header=TRUE, file = i))["nitrate"])  ),5)
    }
  }
  as.vector(x)
}
#sulf<-na.omit(read.csv(header=TRUE, file = i))["sulfate"]
#nit<-na.omit(read.csv(header=TRUE, file = i))["nitrate"]
#x<-round(c(x,  cor(sulf,nit)  ),5)