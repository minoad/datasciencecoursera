pdata <- '/home/minoad/repo/ipyn/education_and_classes/data_science_cert/04_ExploratoryAnalysis/data/household_power_consumption.txt'


#cclass<-c(Date=, Time=, Global_active_power=, Voltage=, Global_intensity=, Sub_metering_1=, Sub_metering_2=
#Sub_metering_3=)

#cclass<-c('Date','character', 'character','character','character','character','character','character' )

n <- read.table(file=pdata, stringsAsFactors = FALSE, sep = ';', header=TRUE, na.strings = '?')

