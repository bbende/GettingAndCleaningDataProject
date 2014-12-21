# Description

This repository contains scripts for creating a tidy dataset from the data provided at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The following files are contained in the repository:

* UIC_tidy.txt - the tidy data that was produced from the original data that was collected from the accelerometers from the Samsung Galaxy S smartphone. 

* run_analysis.R - the R script that transforms the original data into the UIC_tidy.txt. This script assumes that it is located in the same directory where the data set was extracted, meaning that the 'UCI HAR Dataset' directory exists in the same directory as this R script. 

* CodeBook.md - provides a description of the tidy data in UIC_tidy.txt

To create the tidy set from scratch:
* Create a directory on your local machine
* Download the zip file referenced above to that directory
* Extract the zip file
* Place the run_analysis.R script in that same directory created in step1
* From R studio, or the R console, set your working directory to the directory from step1
* Execute the run_analysis.R script
* Results will be written to UIC_tidy.txt

The run_analysis.R script transforms the original data as follows:
* The rows of X_train.txt and X_test.txt are merged using rbind
* The rows of y_train.txt and y_test.txt are merged using rbind
* The rows of subject_train.txt and subject_text.txt are merged using rbind
* The columns of these datasets are merged placing the subject first, y second, and x third
* The data columns are then renamed using "subject" and "activity" for the first two columns, and the values from features.txt for the remaining names
* A smaller set of columns are then selected by taking any column with "mean()" or "std()" in the name, also including the subject and activity column
* The activity column is then converted from the numeric id to the actual name using a look up into the data from activity_labels.txt
* The data is then grouped by subject and activity, and the mean of all the the other columns is calculate for each group
* The resulting data is written to UCI_tidy.txt in the current working directory