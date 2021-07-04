There is one script called run_analysis.R.

It stores the file location "UCI HAR Dataset/test/subject_test.txt" in a variable called url_4_subjects 
It reads the file at that location and calls it test_subjects, this file has the number of the subject for each line of observed data in a later file
That file has a single column and it gives that column the name "subjects"

It stores the file location "UCI HAR Dataset/test/y_test.txt" in a variable called url_4_test_activity_label_numbers 
It reads the file at that location and calls it test_activity_label_numbers, this file has the number of the activity for each line of observed data in a later file
It stores the file location "UCI HAR Dataset/activity_labels.txt" in a variable called url_4_activity_labels 
It reads the file at that location and calls it activity_labels
It loads the plyr library so that it can join activity_labels to test_activity_label_numbers, putting the name of the activity with each number
It then names the column for the activity names as "activity_labels"

It stores the file location "UCI HAR Dataset/test/X_test.txt" in a variable called url_4_test_file 
It reads the file at that location and calls it test_data, this is the file with the observed data mentioned above

It stores the file location "UCI HAR Dataset/features.txt" in a variable called url_4_labels 
It reads the file at that location and calls it labels, this file has the names of the observed data
It then applys those names to test_data, giving the names to the columns of observed data

test_data is then filtered down to only the columns that are means or standard deviations, based on the names applied in the previous step

The three files, test_subjects, test_activity_label_numbers, and test_data are then merged into a single file called combined_test_file

It then repeats much of the above with the training data

It stores the file location "UCI HAR Dataset/train/subject_train.txt" in a variable called url_4_subjects 
It reads the file at that location and calls it train_subjects, this file has the number of the subject for each line of observed data in a later file
That file has a single column and it gives that column the name "subjects"

It stores the file location "UCI HAR Dataset/train/y_train.txt" in a variable called url_4_train_activity_label_numbers 
It reads the file at that location and calls it train_activity_label_numbers, this file has the number of the activity for each line of observed data in a later file
It again uses join from the plyr library to join activity_labels to train_activity_label_numbers, putting the name of the activity with each number
It then names the column for the activity names as "activity_labels"

It stores the file location "UCI HAR Dataset/train/X_train.txt" in a variable called url_4_train_file 
It reads the file at that location and calls it train_data, this is the file with the observed data mentioned above

It stores the file location "UCI HAR Dataset/features.txt" in a variable called url_4_labels 
It reads the file at that location and calls it labels, this file has the names of the observed data
It then applys those names to train_data, giving the names to the columns of observed data

train_data is then filtered down to only the columns that are means or standard deviations, based on the names applied in the previous step

The three files, train_subjects, train_activity_label_numbers, and train_data are then merged into a single file called combined_train_file

combined_test_file and combined_train_file are then merged into a single file called merged_data_set

merged_data_set is then grouped by the subject numbers and the activity_labels
Then all the remained variables are summarized by averaging them within the above groups into a file called summarized_data_set
That file is then saved into a file called "run_analysis.txt"
