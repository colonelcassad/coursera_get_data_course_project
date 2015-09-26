---
title: "Human Activity Recognition Using Smartphones Data Set "
output: html_document
---
#Synopsis

  The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope,  3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz was captured. 
  We got experiments results in form of raw data and created new cleaned dataset with tidy data. 

# Used data

  We used following files:  
 1. "test/subject_test.txt" - Each row identifies the subject who performed the activity for each   window sample. Its range is from 1 to 30.  This corresponds to test data set.  
 2. "train/subject_train.txt" - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.  This corresponds to train data set.  
 3. "test/X_test.txt" - Test set (vector of features for each observation).    
 4. "test/Y_test.txt" - Test labels, indicating type of activity for each observation.  
 3. "train/X_train.txt" - Train set (vector of features for each observation).  
 4. "train/Y_train.txt" - Train labels, indicating type of activity for each observation.  
 5. "activity_labels"  - descriptive values for activity types.  
 6. "features.txt"  - List of all features contains in X_test, X_train files.  
 
 
# Analysis

 All transformations were made in  5 steps:

1. Merging train and test data in one  dataset. 
2. Extracting only the measurements on the mean and standard deviation for each measurement.
3. Naming activity types according to descriptive labels in "activity_labels.txt"
4. Transforming variable names in R valid names.
5. Creating an independent tidy data set with the average of each variable for each activity and each subject.

#Results

Resulting data set has 180 observation in 68 variables, there :
"subject"                 - Identifier of subject who performed an activity
"activity"                - Type of activity

Codebook for other variables can be found bellow.

                                   Codebook
<pre>
----------------------------------------------------------------------------------------
| t                        | stands for time-domain of signal                          |
| f                        | stands for frequency-domain of signal                     |
---------------------------------------------------------------------------------------|
| BodyAcc                  | Body acceleration signal                                  |
| GravityAcc               | Gravity acceleration signal                               |
| BodyAccJerk              | Jerk signal obtained from body acceleration               |
| BodyGyro                 | Body angular velocity signal                              |
| BodyGyroJerk             | Jerk signal obtained from body angular velocity           |
| BodyAccMag               | body acceleration magnitude signal                        |
| GravityAccMag            | gravity acceleration magnitude signal                     |
| BodyAccJerkMag           | Jerk signal obtained from body acceleration magnitude     |
| BodyGyroMag              | Body angular velocity magnitude signal                    |
| BodyGyroJerkMag          | Jerk signal obtained from body angular velocity magnitude |
|--------------------------|-----------------------------------------------------------|
| mean                     | mean value of feature                                     |
| std                      | standard deviation of feature                             |
----------------------------------------------------------------------------------------
| X                        | X-axis component of signal                                |
| Y                        | Y-axis component of signal                                |
| Z                        | Z-axis component of signal                                |
----------------------------------------------------------------------------------------
</pre>
For example,

"fBodyGyroJerkMag.std." -  standard deviation  of Jerk signal obtained from body angular velocity magnitude in frequency domain.

"tBodyGyroMag.mean."   - mean value of body angular velocity magnitude signal in time domain.

<br></br>  
<br></br> 

     