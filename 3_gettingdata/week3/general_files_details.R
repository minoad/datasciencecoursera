## each record has
### - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
### - Triaxial Angular velocity from the gyroscope. 
### - A 561-feature vector with time and frequency domain variables. 
### - Its activity label. 
### - An identifier of the subject who carried out the experiment.


#features list
features<-read.table('content/features.txt')
# activity labels links the class lables with activity names
activity_lables<-read.table('content/activity_labels.txt')