download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv','C:/Users/mnorman/Documents/repos/active/datasciencecoursera/3_gettingdata/week2/scratch/dta.csv')
acs <- read.csv('C:/Users/mnorman/Documents/repos/active/datasciencecoursera/3_gettingdata/week2/scratch/dta.csv')
head(dta)
names(dta)
summary(dta)
n<-data.frame(dta$pwgtp, dta$AGEP)
head(dta$pwgtp1 )
n
library('sqldf')
install.packages('sqldf')

NROW(sqldf('select pwgtp1 from acs where AGEP < 50'))
sqldf('select pwgtp1 from acs where AGEP < 50')

NROW(unique(acs$AGEP))
NROW(sqldf('select distinct AGEP from acs'))


con<-url('http://biostat.jhsph.edu/~jleek/contact.html')
html<-readLines(con)
nchar(html[10])
nchar(html[20])
nchar(html[30])
nchar(html[100])
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for ','C:/Users/mnorman/Documents/repos/active/datasciencecoursera/3_gettingdata/week2/scratch/8119.for')
x<-read.fwf('C:/Users/mnorman/Documents/repos/active/datasciencecoursera/3_gettingdata/week2/scratch/8119.for', skip=4,  widths=c(12, 7,4, 9,4, 9,4, 9,4))
fo<-'C:/Users/mnorman/Documents/repos/active/datasciencecoursera/3_gettingdata/week2/scratch/8119.for'
cat(fo)
sum(x[4])
