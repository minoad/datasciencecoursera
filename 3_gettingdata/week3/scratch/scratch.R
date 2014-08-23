set.seed(13435)
X<-data.frame('var1'=sample(1:5),'var2'=sample(6:10), 'var3'=sample(11:15))
X<-X[sample(1:5),]
X$var2[c(1,3)]=NA

X[,1] #subset by column
X[1:2,'var2']
X[X$var1<=3]
X[(X$var1<=3|X$var3>=15)]
X[which(X[,2]>6)]
X$var2[which(X[,2]>6)]



#Variable Creation/trasforming data
#common
#missingness data
#cutting up quantatative variables
# applying transforms
resturl<-'https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD'
download.file(resturl, 'rows.csv')
restdata<-read.csv('rows.csv')
names(restdata)

#create sequences
s1<-seq(1,10,by=2)
### create a new row in the data frame called nearme
restdata$nearme <- restdata$neighborhood %in% c('Roland Park', 'Homeland')
table(restdata$nearme)
### shows me all of the nearme is true
restdata$name[restdata$nearme]

#this is an interesting use of ifthen
restdata$zipwrong <- ifelse(restdata$zipCode<0,TRUE,FALSE)
restdata$name[restdata$zipwrong]

#catagorical variables out of quantitative variables
restdata$zipgroups <- cut(restdata$zipCode, breaks=quantile(restdata$zipCode))
table(restdata$zipgroups, restdata$zipCode)
quantile(restdata$zipCode)

#turn variables into factors
restdata$zcf <-factor(restdata$zipCode)
restdata$zcf[1:10]
###################################################################################################

#goal is tidy data
library(reshape2)
dcast(mtcars, mtcars$cyl ~ quantile(mtcars$hp))
dcast(mtcars, mtcars$cyl ~ mtcars$hp, mean)
mtcars$pow<-cut(mtcars$hp, breaks=quantile(mtcars$hp))
table(mtcars$mpg, mtcars$pow)


###################################################################################################

