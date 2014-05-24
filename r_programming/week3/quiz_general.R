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
#----------------
sapply(x,mean)[2]
#-----------
str(apply)
x<-matrix(rnorm(200),20,10)
apply(x,c(1:2),sum)
rowMeans=apply(x,1,sum)
x<-array(1:5, 5:1)
?rowSums(x)
colMeans(x)
x

x<-matrix(rnorm(200),20,10)
x
apply(x,1,quantile, probs=c(.25,.50,.75))
?quantile

quantile(1:5,probs=c(.25,.50,.75))

a<-array(rnorm(2*2*10), c(2,2,10))
head(a)
apply(a,c(1,2),mean)
#---------------------
str(tapply)

x<-c(rnorm(10), runif(10), rnorm(10,1))
x
f<-gl(3,10)
tapply(x,f,mean, simplify=FALSE)
?gl
x[2]
str(x)

x<-c(rnorm(10), runif(10), rnorm(10,1))
f<-gl(3,10)
split(x,f)




library(datasets)
head(airquality)
attach(airquality)
Day


n<-vector(Day,Ozone, length=length(Ozone))



oxd<-split(Ozone,Day)
plot(oxd[1 ],oxd[2])

x<-oxd[2]
x






