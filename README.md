# Getting and Cleaning Data Course Project

This repo contains a R script 'run_analysis.R' that merges and summarizes the 
data from the 
[UCI Human Activity Recognition Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
dataset. The script creates a second, independent tidy data set with the 
average of each variable for each activity and each subject and writes 
to a file called 'tidy_data.txt'.

To run the script, 
* Download the [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
* Unzip contents directly into directory containing run_analysis.R
* In a R console, source run_analysis.R
* The tidy data will be in a file called 'tidy_data.txt' in the same directory.

## References
1. Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws