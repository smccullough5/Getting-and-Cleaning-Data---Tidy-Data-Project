## Reading in the data.  Please make sure that the downloaded data is in the
## working directory
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

##Add Column Names to x_test, x_train, subject_test, subject_train, y_test, y_train
colnames(x_test) <- features[,2]                                        ##adds the column names to x_test from the feature file
colnames(x_train) <- features[,2]                                       ##adds the column names to x_train from the feature file
colnames(subject_test) <- "Subject"                                     ##adds a column name to subject_test
colnames(subject_train) <- "Subject"                                    ##adds a column name to subject_train
colnames(y_test) <- "Activity_Label"                                    ##adds a column name to y_test
colnames(y_train) <- "Activity_Label"                                   ##adds a column name to y_train

##Add the Activity Labels to y_test and y_train
y_test[,1][y_test[,1] == 1] <- "WALKING"                                ##replaces 1 with WALKING in y_test
y_test[,1][y_test[,1] == 2] <- "WALKING_UPSTAIRS"                       ##replaces 2 with WALKING_UPSTAIRS in y_test
y_test[,1][y_test[,1] == 3] <- "WALKING_DOWNSTAIRS"                     ##replaces 3 with WALKING_DOWNSTAIRS in y_test
y_test[,1][y_test[,1] == 4] <- "SITTING"                                ##replaces 4 with SITTING in y_test
y_test[,1][y_test[,1] == 5] <- "STANDING"                               ##replaces 5 with STANDING in y_test
y_test[,1][y_test[,1] == 6] <- "LAYING"                                 ##replaces 6 with LAYING in y_test

y_train[,1][y_train[,1] == 1] <- "WALKING"                              ##replaces 1 with WALKING in y_train
y_train[,1][y_train[,1] == 2] <- "WALKING_UPSTAIRS"                     ##replaces 2 with WALKING_UPSTAIRS in y_train
y_train[,1][y_train[,1] == 3] <- "WALKING_DOWNSTAIRS"                   ##replaces 3 with WALKING_DOWNSTAIRS in y_train
y_train[,1][y_train[,1] == 4] <- "SITTING"                              ##replaces 4 with SITTING in y_train
y_train[,1][y_train[,1] == 5] <- "STANDING"                             ##replaces 5 with STANDING in y_train
y_train[,1][y_train[,1] == 6] <- "LAYING"                               ##replaces 6 with LAYING in y_train

##Combine the test and train files into one table to create a Tidy Data Set
library(dplyr)
x_test <- x_test[, !duplicated(colnames(x_test))]                   	## Removes duplicate column names from x_test table
x_test_mean <- select(x_test, contains("mean()"))           		## Selects just the Columns containing mean() from x_test table
x_test_std <- select(x_test, contains("std()"))             		## Selects just the Columns containing std() from x_test table
x_train <- x_train[, !duplicated(colnames(x_train))]			## Removes duplicate column names from x_train table
x_train_mean <- select(x_train, contains("mean()"))         		## Selects just the Columns containing mean() from x_train table
x_train_std <- select(x_train, contains("std()"))           		## Selects just the Columns containing std() from x_train table
test <- cbind(subject_test, y_test, x_test_mean, x_test_std)		## Combines the columns of the _test files 
train <- cbind(subject_train, y_train, x_train_mean, x_train_std)	## Combines the columns of the _train files
TidyDataSet <- rbind(test, train)                                       ## Combines the rows of the test and train tables

##Average each activity variable by aggregating by Subject and Activity_Label
temp <- TidyDataSet[, 3:dim(TidyDataSet)[2]]                            ## Stores the activity variables in a temp data frame
TidyDataMean <- aggregate(temp,list(TidyDataSet$Subject, TidyDataSet$Activity_Label), mean)         ## Calculates the mean of all activity varables
colnames(TidyDataMean)[1] <- "Subject"                                  ## Add Column Label to TidyData Mean Column 1
colnames(TidyDataMean)[2] <- "Activity_Label"                           ## Add Column Label to TidyData Mean Column 2

## Create .txt file
write.table(TidyDataMean, file = "TidyDataMean.txt", row.names = FALSE) ## Creates a .txt file in the working directory

