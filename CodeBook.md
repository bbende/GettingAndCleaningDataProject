# CodeBook
This code book describes the data in UIC_tidy.txt that was produced from running run_analysis.R on the original data.

# Columns

* "subject" - The id of subject who produced the observations, the ids are 1 - 30 for the 30 subjects.

* "activity" - The activity that was taking place when the observations were recorded:
    LAYING
    SITTING
    STANDING
    WALKING
    WALKING_DOWNSTAIRS
    WALKING_UPSTAIRS

The remaining columns contain the mean() of the given attribute for each subject,activity pair. For example, the first value of tBodyAcc-mean()-X contains the mean() of all tBodyAcc-mean()-X values for subject 1 and the activity of LAYING, the second value of tBodyAcc-mean()-X contains the mean() of all tBodyAcc-mean()-X values for subject 1 and the activity of SITTING, and so on.

A full description of the original attribute names is provided in features_info.txt in the original data set:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

* "tBodyAcc-mean()-X" 
* "tBodyAcc-mean()-Y" 
* "tBodyAcc-mean()-Z" 
* "tGravityAcc-mean()-X" 
* "tGravityAcc-mean()-Y" 
* "tGravityAcc-mean()-Z" 
* "tBodyAccJerk-mean()-X" 
* "tBodyAccJerk-mean()-Y" 
* "tBodyAccJerk-mean()-Z" 
* "tBodyGyro-mean()-X" 
* "tBodyGyro-mean()-Y" 
* "tBodyGyro-mean()-Z" 
* "tBodyGyroJerk-mean()-X" 
* "tBodyGyroJerk-mean()-Y" 
* "tBodyGyroJerk-mean()-Z" 
* "tBodyAccMag-mean()" 
* "tGravityAccMag-mean()" 
* "tBodyAccJerkMag-mean()" 
* "tBodyGyroMag-mean()" 
* "tBodyGyroJerkMag-mean()" 
* "fBodyAcc-mean()-X" 
* "fBodyAcc-mean()-Y" 
* "fBodyAcc-mean()-Z" 
* "fBodyAccJerk-mean()-X" 
* "fBodyAccJerk-mean()-Y" 
* "fBodyAccJerk-mean()-Z" 
* "fBodyGyro-mean()-X" 
* "fBodyGyro-mean()-Y" 
* "fBodyGyro-mean()-Z" 
* "fBodyAccMag-mean()" 
* "fBodyBodyAccJerkMag-mean()" 
* "fBodyBodyGyroMag-mean()" 
* "fBodyBodyGyroJerkMag-mean()" 
* "tBodyAcc-std()-X" 
* "tBodyAcc-std()-Y" 
* "tBodyAcc-std()-Z" 
* "tGravityAcc-std()-X" 
* "tGravityAcc-std()-Y" 
* "tGravityAcc-std()-Z" 
* "tBodyAccJerk-std()-X" 
* "tBodyAccJerk-std()-Y" 
* "tBodyAccJerk-std()-Z" 
* "tBodyGyro-std()-X" 
* "tBodyGyro-std()-Y" 
* "tBodyGyro-std()-Z" 
* "tBodyGyroJerk-std()-X" 
* "tBodyGyroJerk-std()-Y" 
* "tBodyGyroJerk-std()-Z" 
* "tBodyAccMag-std()" 
* "tGravityAccMag-std()" 
* "tBodyAccJerkMag-std()" 
* "tBodyGyroMag-std()" 
* "tBodyGyroJerkMag-std()" 
* "fBodyAcc-std()-X" 
* "fBodyAcc-std()-Y" 
* "fBodyAcc-std()-Z" 
* "fBodyAccJerk-std()-X" 
* "fBodyAccJerk-std()-Y" 
* "fBodyAccJerk-std()-Z" 
* "fBodyGyro-std()-X" 
* "fBodyGyro-std()-Y" 
* "fBodyGyro-std()-Z" 
* "fBodyAccMag-std()" 
* "fBodyBodyAccJerkMag-std()" 
* "fBodyBodyGyroMag-std()" 
* "fBodyBodyGyroJerkMag-std()"
