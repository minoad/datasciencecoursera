trim.trailing <- function (x) sub("\\s+$", "", x)
trim <- function (x) gsub("^\\s+|\\s+$", "", x)

get.data<-function(){
   #Helper Functions
    data_dir<<-'UCI HAR Dataset/'
    train_dir<<-'~/repo/datasciencecoursera/3_gettingdata/week3/class_project/UCI HAR Dataset/train/'
    test_dir<<-'~/repo/datasciencecoursera/3_gettingdata/week3/class_project/UCI HAR Dataset/test/'
    
    
    #URLS
    # amcom_url<-'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
    desc_url<-'http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones'
    data_url<-'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
    
    #Downloads and Extractions
    #ifelse(file.exists('amcomdata.csv'),identity,download.file(amcom_url,'amcomdata.csv', method = 'curl'))
    ifelse(file.exists('data.zip'),identity,download.file(data_url,'data.zip', method = 'curl'))
    ifelse(file.exists('UCI HAR Dataset/'),identity,unzip('data.zip'))
    
    
    #File reads
    ###### amcom<<-read.csv('amcomdata.csv', stringsAsFactors=FALSE)
    ###### ins<<-readJPEG('ins.jpeg', native = TRUE)
    ###### edu<<-read.csv('edu.csv',stringsAsFactors=FALSE, na.strings='')
    x_names_file<<-'~/repo/datasciencecoursera/3_gettingdata/week3/class_project/UCI HAR Dataset/features.txt'
    train_files<<-paste(train_dir,list.files(train_dir), sep = '')
    test_files<<-paste(test_dir,list.files(test_dir), sep = '')

    ### detail data
    x_names<<-read.table(x_names_file)
    
    ### train data
    y_train_file<-'~/repo/datasciencecoursera/3_gettingdata/week3/class_project/UCI HAR Dataset/train/y_train.txt'
    x_train_file<-'~/repo/datasciencecoursera/3_gettingdata/week3/class_project/UCI HAR Dataset/train/X_train.txt'

    y_train_data<<-read.table(y_train_file)
    x_train_data<<-read.table(x_train_file)
    
    
    ### test data
    y_test_file<-'~/repo/datasciencecoursera/3_gettingdata/week3/class_project/UCI HAR Dataset/test/y_test.txt'
    x_test_file<-'~/repo/datasciencecoursera/3_gettingdata/week3/class_project/UCI HAR Dataset/test/X_test.txt'
    
    y_test_data<<-read.table(y_test_file)
    x_test_data<<-read.table(x_test_file)
    
    activities<<-read.table('~/repo/datasciencecoursera/3_gettingdata/week3/class_project/UCI HAR Dataset/activity_labels.txt', stringsAsFactors = FALSE)
    
    
    
    

    
    #File Cleaning.  Subsetting, Naming, NA cleaning operations
    ###### gdp<<-gdp[c(1,2,4,5)]
    ###### gdp_titles<-c('code', 'ranking', 'Country', 'gdp')
    ###### names(gdp)<-gdp_titles
    ###### gdp<<-gdp[!is.na(gdp$code)&!is.na(gdp$ranking)&!is.na(gdp$Country)&!is.na(gdp$gdp),]
    
    ####### naming
    names(x_test_data)<-x_names$V2
    names(x_train_data)<-x_names$V2
    names(activities)<-c('labint','labstr')
    
    ###### extract all mean and standard deviation
    means<<-x_names[grep('mean', x_names$V2),]
    std<<-x_names[grep('std', x_names$V2),]
    means_std<<-x_names[grep('std|mean', x_names$V2),]
    
    ###### This data is the means and std subsetted out of the full dataframes
    xtraindata<<-x_train_data[, means_std$V2]
    xtestdata<<-x_test_data[, means_std$V2]
    names(xtraindata)<-means_std$V2
    names(xtestdata)<-means_std$V2
    
    ###### Add the training labels
    xtestdata$labint<-y_test_data
    xtraindata$labint<-y_train_data
    
   fulldata<-rbind(xtestdata,xtraindata)
   means<-c()
   for(i in seq(length(fulldata))){
       print(i)
       n<-fulldata[,i]
       means<-c(means,(mean(as.numeric(trim(gsub(fulldata[,i], pattern = ',', replace=''))))))
   }
   write.table(means,file='means.txt') 
   #lact<-sapply(seq(NROW(xtestdata$labels)), function(i) activities$V2[activities$V1==xtestdata[i,]$labels[[1]]])
    
    #merge(x=xtestdata, y=lact)
    
    #xall<<-
    #File Mergine operations
    ###### gdp_edu<<-merge(x=edu, y=gdp, by.x='shortcode',by.y='code')
}
get.data()


