durl<-"https://d396qusza40orc.cloudfront.net/household_power_consumption.txt"
dloc<-'C:/repos/active/content/'

fname<-unlist(strsplit(durl,'/'))
fname<-fname[NROW(fname)]
fnamepath<-paste0(dloc,fname)

if (file.access(fnamepath)) {
  download.file(durl, fnamepath, method='curl')
}

data<-read.table(fnamepath, 
		sep=';', 
		header=TRUE,
		na.strings="?",
		stringsAsFactors=FALSE,
#		quote='',
#		col.names=c('','')
		)
		
#Summary of all columns
names(data)
sapply(names(data), function(x) summary(data[x]))




#Get subsets 
#  2007-02-01 and 2007-02-02
#as.Date(data[1,]$Date, format='%d/%m/%Y')
dsub<-data[as.Date(data$Date, format='%d/%m/%Y')=='2007-02-01'| as.Date(data$Date, format='%d/%m/%Y')=='2007-02-02',]
str(dsub)


#plot1.R
png(file='C:\\repos\\active\\plots\\plot1.png')
hist(dsub$Global_active_power, xlab='Global Active Power (kilowatts)',main='Global Active Power', col='red')
dev.off()
