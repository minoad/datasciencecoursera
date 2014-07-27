#################################################################################### train files
### subject_train shows the subject who performed the activity
subject_train<-read.table('content/train/subject_train.txt')
### x_train is a train set with A 561-feature vector with time and frequency domain variables.
x_train<-read.table('content/train/x_train.txt')
### y_train is the train lables
y_train<-read.table('content/train/y_train.txt')
## inert files
### body_acc
body_acc_x_train<-read.table('content/train/inert/body_acc_x_train.txt')
body_acc_y_train<-read.table('content/train/inert/body_acc_y_train.txt')
body_acc_z_train<-read.table('content/train/inert/body_acc_z_train.txt')
### body_gyro
body_gyro_x_train<-read.table('content/train/inert/body_gyro_x_train.txt')
body_gyro_y_train<-read.table('content/train/inert/body_gyro_y_train.txt')
body_gyro_z_train<-read.table('content/train/inert/body_gyro_z_train.txt')
### total_acc
#### The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. 
##### The same description applies for the 'total_acc_y_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
total_acc_x_train<-read.table('content/train/inert/total_acc_x_train.txt')
total_acc_y_train<-read.table('content/train/inert/total_acc_y_train.txt')
total_acc_z_train<-read.table('content/train/inert/total_acc_z_train.txt')
####################################################################################