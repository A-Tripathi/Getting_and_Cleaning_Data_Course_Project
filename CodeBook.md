CodeBook
Raw Data Collection
The dataset is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project can be downloaded as a zip file from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The script run_analysis.R: File has the code to perform following analysis and write tidy data. 
1. Merges the training and the test sets to create one data set. 
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set. 
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Variables
x_train, y_train, subject_train: training set data downloaded from file
training_sensor_data: combined training set data

x_test, y_test, subject_test: test set data downloaded from file 
test_sensor_data: combined test set data

sensor_data: Merged training and test set data

features: feature variables
activity_label: assigned ActivityID and Activity

sensor_labels: features or column names saved in sensor_labels
sensor_data_mean_std: measurements on the mean and standard deviation for each measurement.
average_data: independent tidy data set with the average of each variable for each activity and each subject.

sensor_data_by_avg_activity.txt: Output data file.

