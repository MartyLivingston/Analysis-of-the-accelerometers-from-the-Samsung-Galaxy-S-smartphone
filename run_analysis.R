#Get the subject number for each line of the test file
url_4_subjects <- "UCI HAR Dataset/test/subject_test.txt"
test_subjects <- read.table(url_4_subjects)
names(test_subjects) <- c("subjects")

#Give descriptive activity names to the activities in the test data set
url_4_test_activity_label_numbers <- "UCI HAR Dataset/test/y_test.txt"
test_activity_label_numbers <- read.table(url_4_test_activity_label_numbers)
url_4_activity_labels <- "UCI HAR Dataset/activity_labels.txt"
activity_labels <- read.table(url_4_activity_labels)
library(plyr)
test_activity_labels <- join(test_activity_label_numbers,activity_labels)
names(test_activity_labels) <- c("id","activity_labels")

#Get the data measures for the test file
url_4_test_file <- "UCI HAR Dataset/test/X_test.txt"
test_data <- read.table(url_4_test_file)

#Appropriately label the test data set with descriptive variable names
url_4_labels <- "UCI HAR Dataset/features.txt"
labels <- read.table(url_4_labels)
names(test_data) <- labels["V2"][,1]

#filter test data to only the measurements on the mean and standard deviation for each measurement
filtered_test_data <- test_data[grep(".*mean|std.*",names(test_data))]

#Combine the three files for test data
combined_test_file <- cbind(test_subjects,test_activity_labels["activity_labels"],filtered_test_data)

#Get the subject number for each line of the train file
url_4_subjects <- "UCI HAR Dataset/train/subject_train.txt"
train_subjects <- read.table(url_4_subjects)
names(train_subjects) <- c("subjects")

#Give descriptive activity names to the activities in the train data set
url_4_train_activity_label_numbers <- "UCI HAR Dataset/train/y_train.txt"
train_activity_label_numbers <- read.table(url_4_train_activity_label_numbers)
train_activity_labels <- join(train_activity_label_numbers,activity_labels)
names(train_activity_labels) <- c("id","activity_labels")

#Get the data measures for the train file
url_4_train_file <- "UCI HAR Dataset/train/X_train.txt"
train_data <- read.table(url_4_train_file)

#Appropriately label the train data set with descriptive variable names
url_4_labels <- "UCI HAR Dataset/features.txt"
labels <- read.table(url_4_labels)
names(train_data) <- labels["V2"][,1]

#Filter train data to only the measurements on the mean and standard deviation for each measurement
filtered_train_data <- train_data[grep(".*mean|std.*",names(train_data))]

#Combine the three files for train data
combined_train_file <- cbind(train_subjects,train_activity_labels["activity_labels"],filtered_train_data)

#Merge the training and the test sets to create one data set
merged_data_set <- rbind(combined_test_file,combined_train_file)

#Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
summarized_data_set <- merged_data_set %>% group_by(subjects,activity_labels) %>% summarize(across(everything(), mean))
write.table(summarized_data_set, file = "run_analysis.txt", row.name=FALSE)
