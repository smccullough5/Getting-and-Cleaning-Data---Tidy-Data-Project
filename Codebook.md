				DATA DICTIONARY - Getting and Cleaning Data - Course Project

Feature Selection - (copied from original source file, features_info.txt)
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

				
Variables
=======================================
For specific unit information please refer to the README file that was downloaded with the rest of the data.  For this data set only the variables that referred to the mean() and std() were used as outlined by the project description.  Subject and Activity_Label were also added to identify the type of activity each subject was participating in at the time the measurements were taken.

"Subject"
		Number pertaining to an individual subject
			1 - 30
"Activity_Label"
		Description of Activity being performed
			WALKING
			WALKING_UPSTAIRS
			WALKING_DOWNSTAIRS
			SITTING
			STANDING
			LAYING
			
"tBodyAcc-mean()-X"
		Mean of Body Acceleration on the X axis
		
"tBodyAcc-mean()-Y"
		Mean of Body Acceleration on the Y axis
		
"tBodyAcc-mean()-Z"
		Mean of Body Acceleration on the Z axis
		
"tGravityAcc-mean()-X"
		Mean of Gravity Acceleration on the X axis
		
"tGravityAcc-mean()-Y"
		Mean of Gravity Acceleration on the Y axis
	
"tGravityAcc-mean()-Z"
		Mean of Gravity Acceleration on the Z axis
	
"tBodyAccJerk-mean()-X"
		Mean of Body Linear Acceleration on the X axis
	
"tBodyAccJerk-mean()-Y"
		Mean of Body Linear Acceleration on the Y axis
	
"tBodyAccJerk-mean()-Z"
		Mean of Body Linear Acceleration on the Z axis
	
"tBodyGyro-mean()-X"
		Mean of Angular Velocity on the body on the X axis
	
"tBodyGyro-mean()-Y"
		Mean of Angular Velocity on the body on the Y axis
	
"tBodyGyro-mean()-Z"
		Mean of Angular Velocity on the body on the Z axis
	
"tBodyGyroJerk-mean()-X"
		Mean of Angular Velocity and Linear Body Acceleration on the body on the X axis
	
"tBodyGyroJerk-mean()-Y"
		Mean of Angular Velocity and Linear Body Acceleration on the body on the Y axis
	
"tBodyGyroJerk-mean()-Z"
		Mean of Angular Velocity and Linear Body Acceleration on the body on the Z axis
	
"tBodyAccMag-mean()"

"tGravityAccMag-mean()"

"tBodyAccJerkMag-mean()"

"tBodyGyroMag-mean()"

"tBodyGyroJerkMag-mean()"

"fBodyAcc-mean()-X"

"fBodyAcc-mean()-Y"

"fBodyAcc-mean()-Z"

"fBodyAccJerk-mean()-X"

"fBodyAccJerk-mean()-Y"

"fBodyAccJerk-mean()-Z"

"fBodyGyro-mean()-X"

"fBodyGyro-mean()-Y"

"fBodyGyro-mean()-Z"

"fBodyAccMag-mean()"

"fBodyBodyAccJerkMag-mean()"

"fBodyBodyGyroMag-mean()"

"fBodyBodyGyroJerkMag-mean()"

"tBodyAcc-std()-X"

"tBodyAcc-std()-Y"

"tBodyAcc-std()-Z"

"tGravityAcc-std()-X"

"tGravityAcc-std()-Y"

"tGravityAcc-std()-Z"

"tBodyAccJerk-std()-X"

"tBodyAccJerk-std()-Y"

"tBodyAccJerk-std()-Z"

"tBodyGyro-std()-X"

"tBodyGyro-std()-Y"

"tBodyGyro-std()-Z"

"tBodyGyroJerk-std()-X"

"tBodyGyroJerk-std()-Y"

"tBodyGyroJerk-std()-Z"

"tBodyAccMag-std()"

"tGravityAccMag-std()"

"tBodyAccJerkMag-std()"

"tBodyGyroMag-std()"

"tBodyGyroJerkMag-std()"

"fBodyAcc-std()-X"

"fBodyAcc-std()-Y"

"fBodyAcc-std()-Z"

"fBodyAccJerk-std()-X"

"fBodyAccJerk-std()-Y"

"fBodyAccJerk-std()-Z"

"fBodyGyro-std()-X"

"fBodyGyro-std()-Y"

"fBodyGyro-std()-Z"

"fBodyAccMag-std()"

"fBodyBodyAccJerkMag-std()"

"fBodyBodyGyroMag-std()"

"fBodyBodyGyroJerkMag-std()"
