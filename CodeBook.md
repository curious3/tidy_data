# CodeBook for Getting and Cleaning Data Course Project

## Input

Download the [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
and unzip into the same directory as run_analysis.R. After unzipping the data, the current working 
directory must contain the following files and directories
* activity_labels.txt
* features.txt
* test/ directory with contents
* train/ directory with contents
* run_analysis.R

## Transformations

The script performs the following transformations:
* Loads the features.txt and activity_labels.txt to get the measure names and activity names respectively
* Loads the test/ and train/ data and merges (rbind) to create a single data set
* Renames the measure column names with the names from features.txt
* Selects the columns with mean or std in their names
* Aggregates by calculating mean by activity and subject
* Renames the activity numbers with their names
* Writes the data to a tidy_data.txt

## Output

The output is a file 'tidy_data.txt' showing the 
mean by activity and subject of measures with mean or std in their names.