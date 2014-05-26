best<-function(state="IL", outcome="heart attack"){
    #       outcome<-"heart attack"; st<-"IL"
    #       
    directory <- "~/R/datasciencecoursera/r_programming/week4/programming_assignment_3/specdata/"
    hospital_info_file<-paste(directory, "hospital-data.csv", sep="")
    hospital_data_file<-paste(directory, "outcome-of-care-measures.csv", sep="")
    info<-read.csv(hospital_info_file, header=T)
    
    valid_outcomes<-as.vector(c("heart attack","heart failure", "pneumonia"))
    #i was experimenting with looping and didnt want to keep reloading the file
    #if(!exists("data"))
    data<-read.csv(hospital_data_file, header=T, na.strings="Not Available")
    if(!state %in% data$State)stop("invalid state")
    if(!outcome %in% valid_outcomes)stop("invalid outcome")
    #take state and outcome name calculate hospital with lowest
    ##30 day mortality for the outcome for the state
    ##State                 data[7]
    #heart attack           data[11]
    #heart failure          data[17]
    #pneumonia              data[23]
    
    #i did na.omit() below.  i dont see any issues, buit if needed i can calc the min/max and apply na.rm to the function
    if(outcome=="heart attack")measure<-na.omit((data[c(2,7,11)])[(data[c(2,7,11)])$State==state, ])
    if(outcome=="heart failure")measure<-na.omit((data[c(2,7,17)])[(data[c(2,7,17)])$State==state, ])
    if(outcome=="pneumonia")measure<-na.omit((data[c(2,7,23)])[(data[c(2,7,23)])$State==state, ])
    min_measure<-measure[measure[3]==min(measure[3])]
    #print(min_measure[1])
    min_measure[1]
    #return Hospital.Name as a char vector 
}

