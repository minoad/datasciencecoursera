
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

#plot2.R
dsub$dow<-weekdays(as.Date(dsub$Date, format='%d/%m/%Y'))
dsub_by_day<-data.frame(dsub$Global_active_power,dsub$dow)
names(dsub_by_day)<-c('gap','dow')
names(dsub_by_day)
png(file='C:\\repos\\active\\plots\\plot2.png')
plot(dsub_by_day$gap, type='n', xlab='',axes=F, ylab='Global Active Power (kilowatts)', main='')
lines(dsub_by_day$gap)
ticks<-c('Thursday', 'Friday', 'Saturday')
axis(side=1, at=0, labels='Thursday')
axis(side=1, at=NROW(dsub_by_day)/2, labels='Friday')
axis(side=1, at=NROW(dsub_by_day), labels='Saturday')
dev.off()
