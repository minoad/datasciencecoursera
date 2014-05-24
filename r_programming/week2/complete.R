complete <- function(directory, id = 1:332) {
  return_id<-numeric()
  return_count<-numeric()
  for (i in paste(sep="",directory,"/",(filenames <- list.files(directory))[id])) {  
    #return_val<- c(return_val, as.numeric(unlist(   (na.omit(read.csv(header=TRUE, file = i)))[pollutant]     ))  )
    return_id<-id
    return_count<-c(return_count,nrow(na.omit(read.csv(header=TRUE, file = i))))
  }
  #round(mean(as.numeric(return_val)), digits=3)  
  return_val<-data.frame()
  return_val<- data.frame(id=return_id,nobs=return_count)
}          
  ## 'directory' is a character vector of length 1 indicating
            ## the location of the CSV files

            ## 'id' is an integer vector indicating the monitor ID numbers
            ## to be used
            
            ## Return a data frame of the form:
            ## id nobs
            ## 1  117
            ## 2  1041
            ## ..
