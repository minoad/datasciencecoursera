# 70 percent for training set
#30 percent for test set
## each record has
### - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
### - Triaxial Angular velocity from the gyroscope. 
### - A 561-feature vector with time and frequency domain variables. 
### - Its activity label. 
### - An identifier of the subject who carried out the experiment.
## dataset Files included
### - 'README.txt'
### - 'features_info.txt': Shows information about the variables used on the feature vector.
### - 'features.txt': List of all features.
### - 'activity_labels.txt': Links the class labels with their activity name.
### - 'train/X_train.txt': Training set.
### - 'train/y_train.txt': Training labels.
### - 'test/X_test.txt': Test set.
### - 'test/y_test.txt': Test labels.
## Files for train and test data
### - - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
### - - 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
### - - 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
### - - 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

# Load files
contentfolder <- 'content/'
test_content<- 'content/test/'
train_content<-'content/train/'

## test files
subject_test<-read.table('content/test/subject_test.txt')
x_test<-read.table('content/test/x_test.txt')
y_test<-read.table('content/test/y_test.txt')

## inert files
### body_acc
body_acc_x_test<-read.table('content/test/inert/body_acc_x_test.txt')
body_acc_y_test<-read.table('content/test/inert/body_acc_y_test.txt')
body_acc_z_test<-read.table('content/test/inert/body_acc_z_test.txt')
### body_gyro
body_gyro_x_test<-read.table('content/test/inert/body_gyro_x_test.txt')
body_gyro_y_test<-read.table('content/test/inert/body_gyro_y_test.txt')
body_gyro_z_test<-read.table('content/test/inert/body_gyro_z_test.txt')
### total_acc
total_acc_x_test<-read.table('content/test/inert/total_acc_x_test.txt')
total_acc_y_test<-read.table('content/test/inert/total_acc_y_test.txt')
total_acc_z_test<-read.table('content/test/inert/total_acc_z_test.txt')

## train files