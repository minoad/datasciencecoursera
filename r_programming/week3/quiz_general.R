x<-list(a=1:5,b=rnorm(10))
lapply(x,mean)


x<-list(a=1:4, b=rnorm(10), c=rnorm(20,1),d=rnorm(100,5))
lapply(x,mean)

x<-1:4
lapply(x,runif)
runif(4)
??runif

lapply(x,runif,min=0,max=10)

x<-list(a=matrix(1:4,2,2), b=matrix(1:6,3,2))
x
lapply(x,function(elt)elt[,1])
elt 
??elt
----------------
  x
x
sapply(x,mean)[2]
-----------
str(apply)
x<-matrix(rnorm(200),20,10)
apply(x,c(1:2),sum)
rowsums=apply(x,1,sum)
?rowSums()
