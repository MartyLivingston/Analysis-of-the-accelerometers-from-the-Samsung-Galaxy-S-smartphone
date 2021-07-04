First I read in a file, subject_test.txt,  with the subject number for each line of the test file
I gave then the name "subjects"

Then I read in a file, y_test.txt, with the activity label numbers for each line of the test file
Then I uploaded a file, activity_labels.txt, that matches the activity label numbers to descriptive activity names to the activities in the test data set
I joined the descriptive activity names to the activity label numbers for each line of the test file and called them "activity_labels"

I then uploaded the data measures for the test file, X_test.txt.
I gave each of those variables a descriptive name based on the file features.txt

Based on those names, I filtered test data to only the columns that were means and standard deviations

I then combined the subject labels, the activity labels, and the measurements into one file for the test data

Then I repeated those steps for the train data:
    I read in a file, subject_train.txt,  with the subject number for each line of the train file
    I gave then the name "subjects"

    Then I read in a file, y_train.txt, with the activity label numbers for each line of the train file
    I joined the descriptive activity names to the activity label numbers that I had uploaded previously for each line of the train file and called them "activity_labels"

    I then uploaded the data measures for the train file, X_train.txt.
    I gave each of those variables a descriptive name based on the file features.txt

    Based on those names, I filtered train data to only the columns that were means and standard deviations

    I then combined the subject labels, the activity labels, and the measurements into one file for the train data

I then merged the training and the test sets omto create one data set

I then created a second, independent tidy data set with the average of each variable for each activity and subject combination.


The variables in the tidy data set are:
subjects - The number assigned to each subject
activity_labels - The label describing the activity

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The data represents the mean of the means and standard deviations given in the orginal files

tBodyAcc-mean()-X
tBodyAcc-mean()-Y               
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y                
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y            
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y             
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y           
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y            
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y              
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y               
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y          
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y           
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()               
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()          
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()              
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X               
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X                
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAcc-meanFreq()-X           
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z
fBodyAccJerk-mean()-X           
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X            
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyAccJerk-meanFreq()-X       
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z
fBodyGyro-mean()-X              
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X               
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyGyro-meanFreq()-X          
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z
fBodyAccMag-mean()              
fBodyAccMag-std()
fBodyAccMag-meanFreq()
fBodyBodyAccJerkMag-mean()      
fBodyBodyAccJerkMag-std()
fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMag-mean()         
fBodyBodyGyroMag-std()
fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag-mean()     
fBodyBodyGyroJerkMag-std()
fBodyBodyGyroJerkMag-meanFreq()

