pollutantmean <- function(directory="specdata", pollutant="sulfate", id=1:332){
  
  return_val<-vector()
  for (i in paste(sep="",directory,"/",(filenames <- list.files(directory))[id])) {return_val<- c(return_val, as.numeric(unlist(   (read.csv(header=TRUE, file = i))[pollutant]     ))  )} 
  
  n<-mean(return_val[is.na(return_val)==FALSE])
  
  
  #return_val<-list()
  #for (i in paste(sep="",directory,"/",(filenames <- list.files(directory))[id])) {  
  #  return_val<- c(return_val, as.numeric(unlist(   (na.omit(read.csv(header=TRUE, file = i)))[pollutant]     ))  )
  #  yy<-c(   yy,   ((read.csv(header=TRUE, file = i))[pollutant])[is.na(((read.csv(header=TRUE, file = i))[pollutant]))==FALSE])
  #}
  #round(mean(as.numeric(return_val)), digits=5)  
  #print(mean(yy))
  #round(mean(as.numeric(yy)), digits=5)  
}

#a<-na.omit(read.csv(header=TRUE, file = i))
#return_val<- c(return_val,as.numeric(unlist(a[pollutant])))
#print(nrow(a))  
#vector(as.numeric(unlist(a[pollutant])))
    
    #return_val<- c(c,mean(as.numeric(unlist(a[pollutant]))))
    #return_val<- c(c,mean(as.numeric(unlist(a[pollutant]))))
    
    #print( mean(as.numeric(unlist((a[pollutant])[a[pollutant]>0.00]))) )
    #print(typeof(a[pollutant]))
    #print(mean(a[pollutant]))
    #print(na.omit(a[pollutant],rm=TRUE))

  #apply(data,2,max,na.rm=TRUE)
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".

  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used

  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)


