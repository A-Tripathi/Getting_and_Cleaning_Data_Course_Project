library(dplyr)

# Read training set data

x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")

training_sensor_data <- cbind(cbind(x_train, subject_train), y_train)

# Read test set data

x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")

test_sensor_data <- cbind(cbind(x_test, subject_test), y_test)

# [1] Merges the training and the test sets to create one data set.

sensor_data <- rbind(training_sensor_data, test_sensor_data)

# Add Labels to features (columns)

features <- read.table("./features.txt", colClasses = c("character"))
activity_label <- read.table("./activity_labels.txt", col.names = c("ActivityID", "Activity"))

sensor_labels <- rbind(rbind(features, c(562, "Subject")), c(563, "ActivityID"))[,2]
names(sensor_data) <- sensor_labels

# [2] Extracts only the measurements on the mean and standard deviation for each measurement.

sensor_data_mean_std <- sensor_data[,grepl("mean|std|Subject|ActivityID", names(sensor_data))]

# [3] Uses descriptive activity names to name the activities in the data set

sensor_data_mean_std <- join(sensor_data_mean_std, activity_label, by = "ActivityID", match = "first")
sensor_data_mean_std <- sensor_data_mean_std[,-1]

# [4] Appropriately labels the data set with descriptive variable names.

names(sensor_data_mean_std) <- gsub('[()-]', '', names(sensor_data_mean_std)) # Remove the parenthesis and dashes
names(sensor_data_mean_std) <- gsub('mean', "Mean", names(sensor_data_mean_std)) # replace mean by Mean
names(sensor_data_mean_std) <- gsub('std', "StdDev", names(sensor_data_mean_std)) # replace std by StdDev

# [5] Create a second, independent tidy data set with the average of each variable for each activity and each subject.

average_data <- ddply(sensor_data_mean_std, c("Subject","Activity"), numcolwise(mean))

# Create a txt file of tidy dataset

write.table(average_data, file = "sensor_data_by_avg_activity.txt", row.name = FALSE)


