## each record has
### - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
### - Triaxial Angular velocity from the gyroscope. 
### - A 561-feature vector with time and frequency domain variables. 
### - Its activity label. 
### - An identifier of the subject who carried out the experiment.

# first open up the files and create the approrpriate data frams.
## then apply the features as the column names by transposing the features second column vector
## then bring the x_test (data) and y_test (activity label id's) together into a single data frame

#features list
## this maps directly to the 561 vector

## The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
### These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
### Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
### Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) 
### using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

## Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
### Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
### (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

## Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
### fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

## These signals were used to estimate variables of the feature vector for each pattern:  
### '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

############################### measurements ################3######3
#   name        func             1       2         3       4
#3  tBodyAcc    mean             x       y         z                       
#6              std              x       y         z
#9              mad              x       y         z
#12             max              x       y         z
#15             min              x       y         z
#16             sma             ()
#19             energy           x       y         z
#22             iqr              x       y         z
#25             entropy          x       y         z
#29             arcoeff          x,1     x,2     x,3     x,4
#33             arcoeff          y,1     y,2     y,3     y,4
#37             arcoeff          z,1     z,2     z,3     z,4
#40             correlation      x,y     x,z     y,z
# 1 - 40   tGravityAcc 
# 41 - 80  tBodyAccJerk
# 81 - 120  tBodyGyro
# 121 - 160  tBodyGyroJerk
# 161 - 200  tBodyGyroMag

#   tBodyAccMag mean            ()
#               std             ()
#               mad             ()
#               max             ()
#               min             ()
#               sma             ()
#               energy          ()
#               iqr             ()
#               entropy         ()
#               arcoeff         1
#               arcoeff         2
#               arcoeff         3
#               arcoeff         4
# 201 - 213  tBodyAccMag
# 214 - 226 tGravityAccMag
# 227 - 239 tBodyAccJerkMag
# 240 - 252 tBodyGyroMag
# 253 - 265 tBodyGyroJerkMag
###    	mean()	X
##		mean()	Y
##		mean()	Z
##		std()	X
##		std()	Y
##		std()	Z
##		mad()	X
##		mad()	Y
##		mad()	Z
##		max()	X
##		max()	Y
##		max()	Z
##		min()	X
##		min()	Y
##		min()	Z
##		sma()
##		energy()	X
##		energy()	Y
##		energy()	Z
##		iqr()	X
##		iqr()	Y
##		iqr()	Z
##		entropy()	X
##		entropy()	Y
##		entropy()	Z

# 266 - 344 fBodyAcc
## 40 total measure per name

features<-read.table('content/features.txt', col.names=c('id', 'func'))
# activity labels links the class lables with activity names
activity_lables<-read.table('content/activity_labels.txt', col.names = c('id', 'title'))


#################################################################################### test files

### x_test is a test set with A 561-feature vector with time and frequency domain variables.
x_test<-read.table('content/test/x_test.txt', col.names = t(features[,2]))
### y_test is the test lables
y_test<-read.table('content/test/y_test.txt', col.names = c('activity_id'))
## bind the x and y information
xdata<-cbind(x_test, y_test)


#####################################################################################33

## inert files
### subject_test shows the subject who performed the activity
subject_test<-read.table('content/test/subject_test.txt', col.names = c('userid'))
### body_acc
#### These all have a length of 128
#### The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
body_acc_x_test<-read.table('content/test/inert/body_acc_x_test.txt')
body_acc_y_test<-read.table('content/test/inert/body_acc_y_test.txt')
body_acc_z_test<-read.table('content/test/inert/body_acc_z_test.txt')
body_acc_x_test<-cbind(subject_test, body_acc_x_test)
body_acc_y_test<-cbind(subject_test, body_acc_y_test)
body_acc_z_test<-cbind(subject_test, body_acc_z_test)


### body_gyro
#### The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 
body_gyro_x_test<-read.table('content/test/inert/body_gyro_x_test.txt')
body_gyro_y_test<-read.table('content/test/inert/body_gyro_y_test.txt')
body_gyro_z_test<-read.table('content/test/inert/body_gyro_z_test.txt')
body_gyro_x_test<-cbind(subject_test, body_gyro_x_test)
body_gyro_y_test<-cbind(subject_test, body_gyro_y_test)
body_gyro_z_test<-cbind(subject_test, body_gyro_z_test)

### total_acc
#### The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. 
##### The same description applies for the 'total_acc_y_test.txt' and 'total_acc_z_test.txt' files for the Y and Z axis. 
total_acc_x_test<-read.table('content/test/inert/total_acc_x_test.txt')
total_acc_y_test<-read.table('content/test/inert/total_acc_y_test.txt')
total_acc_z_test<-read.table('content/test/inert/total_acc_z_test.txt')
total_acc_x_test<-cbind(subject_test, total_acc_x_test)
total_acc_y_test<-cbind(subject_test, total_acc_y_test)
total_acc_z_test<-cbind(subject_test, total_acc_z_test)

####################################################################################