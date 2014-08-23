microdata<-'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'

download.file(microdata, '06hid.csv')
n<-read.csv('06hid.csv')
names(n)

#TYPE
##1 .Housing unit ##2 .Institutional group quarters##3 .Noninstitutional group quarters

#ACR
##Lot size 
##b .N/A (GQ/not a one-family house or mobile home)##1 .House on less than one acre##2 .House on one to less than ten acres 
##3 .House on ten or more acres

#AGS 1 
##Sales of Agriculture Products
##b .N/A (less than 1 acre/GQ/vacant/##          .2 or more units in structure)
##1 .None##2 .$ 1 - $ 999##3 .$ 1000 - $ 2499##4 .$ 2500 - $ 4999##5 .$ 5000 - $ 9999##6 .$10000+

#logical vector for:
##houses x on 
##greater thatn 10 acres x
##sold more than 10k
###of agricultural

n$ACR==3
agricultureLogical<-(n$TYPE==1&n$ACR==3&n$AGS==6)
which(agricultureLogical)
https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg
pic<-"https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
download.file(pic,'jeff2.jpg')
install.packages('jpeg')
library('jpeg')
n<-jpeg(filename='jeff.jpg',native=TRUE)
n<-readJPEG(source='./jeff2.jpg', native=TRUE)

quantile(n, probs=c(30,80))
quantile(n[c(.3,.8)], na.rm=TRUE)
?quantile


quantile(as.numeric(cut(n, breaks=80)))



gdpurl<-'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
edurl<-'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv'
download.file(edurl, 'ed.csv')
download.file(gdpurl, 'gdp.csv')
e<-read.csv('ed.csv')
n<-read.csv('gdp.csv', skip=3)

names(e)
e$id <- e$CountryCode
e[c('CountryCode', 'id']
names(n)
n$id<-n$X
total<-merge(e,n,by='id')
total


names(total)
rnk<-total[c('id','CountryCode', 'Ranking')]
sort(rnk,decreasing=TRUE)
order(as.numeric(rnk$Ranking), decreasing=TRUE)
attach(rnk)
total[sort('Ranking')]

totl
c(total$Ranking, 
 
  
  total$id

