# Getting_and_Cleaning_Data_Course_Project

This repository consists of R source code and documentation for the Coursera Data Science -"Getting and Cleaning Data Course" Course Project.
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis.

The dataset is collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project can be downloaded as a zip file from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

CodeBook.md: a code book that describes the variables, the data, and any transformations or work that was performed to clean up the data.

run_analysis.R: File has the code to perform following analysis and write tidy data.
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The output of the 5th step is uploaded as a txt file: sensor_data_by_avg_activity.txt


