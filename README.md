# README
## run_analysis.R
This script contains the function run_analysis().
The function returns a tidy data set of mean() and std() variables from the Human Activity Recognition Using Smartphones data set.
In addition, the function writes the file "tidydata_mean.txt" to the working directory. 
The data set is located here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## The tidy data set
The tidy data set includes columns identifying the type of activity, the identifier of the subject, the measured variable, and the measurement.
## tidydata_mean.txt
This file is output to the working directory and contains the mean of all measurements in the tidy data set for each subject and activity.
## Code book
Details of the tidy data set are given in CodeBook.md