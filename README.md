##How run_analysis.R creates a tidy data set of the Samsung Data used in Coursera Getting and Cleaning Data

Dependencies
================================================================================================================
This code depends on dplyr.  Please make sure you have this package loaded into R.  If not please run

	install.packages("dplyr")

Make sure that the files are unzipped and in the parent directory.  If not please go to 

	[Link to zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

How the code works
================================================================================================================
1.  The data is read into R.  Including the Test and Train data, as well as, the Subject and Activity Labels
2.  The column names are added.  For the x_test and x_train files the labels are added from the features files
3.  The Activity Labels are added to y_test and y_train
4.  In the x_test and x_train tables only the variables with "mean()" or "std()" are used.
	All other columns are ignored
5.  The columns from subject_test, y_test, x_test_mean, x_test_std are merged.  Likewise, for the _train tables
6.  These rows from these two tables are then merged
7.  The mean is calculated by aggregating on the Subject and Activity_Label Variables.  The resulting table has
	180 rows (one for each of the 30 participants and the 6 activities) and 68 columns (one for the participant number = 
	"Subject", one for the Activity = "Activity_Label" and 66 for the corresponding mean() and std() variables)
	Source:  [Link to file](http://sergiocosta-bi.blogspot.com/2014/10/getting-and-cleaning-data-on-r.html)
8.  The data is output using write.table as a .txt file called "TidyDataMean" in the working directory.

In order to view the code within R you can use the following code:

	TidyData <- read.table("TidyDataMean.txt", header = TRUE)
	View(TidyData)

	Source:  https://class.coursera.org/getdata-011/forum/thread?thread_id=69

Notes from the original README file included with the .zip referenced above
================================================================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
================================================================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
================================================================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
================================================================================================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
