pdata <- '/home/minoad/repo/ipyn/education_and_classes/data_science_cert/04_ExploratoryAnalysis/data/household_power_consumption.txt'
n <- read.table(file=pdata,stringsAsFactors = FALSE,
                colClasses=c("character", "character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric"), 
                sep = ';', header=TRUE, na.strings = '?')
m <- subset(n, as.Date(Date, format='%d/%m/%Y')>='2007-02-01' & as.Date(Date, format='%d/%m/%Y')<='2007-02-02')

#-------------Get required data to M
graph1 <-m[c("Date","Time", "Global_active_power")]
png('plot1.png')
with(graph1,{
    hist(Global_active_power, col='Red', main='Global Active Power', xlab='Global Active Power (kilowatts)')
    #mtext('Global Active Power')
    
})
dev.off()