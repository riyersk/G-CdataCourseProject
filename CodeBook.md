DATA SOURCE

The Data for this project was obtained via this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following is a paraphrase of the README and features_info text files in the above zipped folder. Some portions have been omitted for the purposes of this project:
___________________________________________________________________________________________________________________________________
A group of 30 subjects performed six activities: walking, walking upstairs, walking downstairs, sitting, standing, and laying. While they were performing the activities, they wore a Samsung Galaxy S II smartphone. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were measured at a rate of 50 hz. 

The sensor acceleration signal was separated with a low-pass filter into body acceleration (high frequency components) and acceleration due to gravity(low frequency components).  From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Features are normalized to be within [-1,1]

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ (prefix 't' for time domain). 

The body linear acceleration and angular velocity were differentiated in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). The magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (prefix 'f' for frequency domain). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
__________________________________________________________________________________________________________________________
Now, for this project, an extra step was taken with the above described data.  For each subject and for each activity, the mean for each variable was taken.  For example, The mean of all the body acceleration entries in the X direction for subject 1 while subject 1 was sitting was taken.  Similarly, the means of each of the other variables were taken for each subject and activity.  The results of this are in a summaryTable text file in this repository as well as submitted on the coursera submission page.
