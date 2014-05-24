object<-matrix(c(1,2,3,4),nrow=2,ncol=2, dimnames=list(c("R1","R2"),c("C1","C2")))
object2<-matrix(c(9,8,7,6),nrow=2,ncol=2, dimnames=list(c("R1","R2"),c("C1","C2")))
object
length(object) # number of elements or components
str(object)    # structure of an object 
class(object)  # class or type of an object
names(object)  # names
?names
c(object,object2)       # combine objects into a vector
cbind(object, object2) # combine objects as columns
rbind(object, object2) # combine objects as rows 

fix(object)               # edit in place
