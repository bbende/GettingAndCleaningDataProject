# Description

This repository contains scripts for creating a tidy dataset from the data provided at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The following files are contained in the repository:

* UIC_tidy.txt - the tidy data that was produced from the original data that was collected from the accelerometers from the Samsung Galaxy S smartphone. 

* run_analysis.R - the R script that transforms the original data into the UIC_tidy.txt. This script assumes that it is located in the same directory where the data set was extracted, meaning that the 'UCI HAR Dataset' directory exists in the same directory as this R script. 

* CodeBook.md - provides a description of the tidy data in UIC_tidy.txt


To create the tidy set from scratch:
1. Create a directory on your local machine
2. Download the zip file referenced above to that directory
3. Extract the zip file
4. Place the run_analysis.R script in that same directory created in step1
5. From R studio, or the R console, set your working directory to the directory from step1
6. Execute the run_analysis.R script
7. Results will be written to UIC_tidy.txt