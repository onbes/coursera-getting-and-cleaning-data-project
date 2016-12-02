library(dplyr)

# 0. read data in
features_train <- read.table("train/X_train.txt")
features_test <- read.table("test/X_test.txt")
feature_names <- read.table("features.txt")

activity_train <- read.table("train/y_train.txt")
activity_test <- read.table("test/y_test.txt")
activity_labels <- read.table("activity_labels.txt")

subject_train <- read.table("train/subject_train.txt")
subject_test <- read.table("test/subject_test.txt")

# 1. Merges the training and the test sets to create one data set.
features <- rbind(features_train, features_test)
activity <- rbind(activity_train, activity_test)
subject <- rbind(subject_train, subject_test)

#name the columns 
names(features) <- feature_names[,2]
names(activity) <- "Activity"
names(subject) <- "Subject"

allData <- cbind(features,activity,subject)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# get columns that have std or mean in their names
columns_of_interest <- grep(".*Std.*|.*Mean.*",names(allData),ignore.case = TRUE)

#562,563 for activity and subject columns
data_of_interest <- allData[,c(columns_of_interest,562,563)]

# 3. Uses descriptive activity names to name the activities in the data set
data_of_interest$Activity <- activity_labels[,2][data_of_interest$Activity]

# 4. Appropriately labels the data set with descriptive variable names.
# get variable names
names(data_of_interest) <- gsub("Acc","Accelerometer",names(data_of_interest))
names(data_of_interest) <- gsub("Gyro","Gyroscope",names(data_of_interest))
names(data_of_interest) <- gsub("Mag","Magnitude",names(data_of_interest))
names(data_of_interest) <- gsub("^f","Frequency_",names(data_of_interest))
names(data_of_interest) <- gsub("^t","Time_",names(data_of_interest))
names(data_of_interest) <- gsub("[(][)]","",names(data_of_interest))

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy_dataset <- aggregate(. ~Subject + Activity,data_of_interest,FUN = mean)
# order tidy data set by subject increasing order
tidied_dataset <- tidy_dataset[order(tidy_dataset$Subject,tidy_dataset$Activity),]

write.table(tidied_dataset, file = "Tidy_dataset.txt", row.names = FALSE)