---
title: "Readme"
output: html_document
---

This repo contains files for processing raw data file from "Human Activity Recognition Using Smartphones Data Set " to new tidy data.

File "load_data.R" is responsible for loading data.  We loaded "subject_train","subject_test","Y_train " and "Y_test" with **read.fwf()** function according to their formats. Other files loaded with **read.csv()** function. We had cached data to disk file "dataset.rda" because loading data consume some time.

Main file in "run_analysis.R".  It contains next steps:

1. Loading cached data by sourcing "load_data.R".  
2. Merging train and test datasets with **cbind()** and **rbind()** function.  
3. Assigning variables names from features dataframe. This dataframe contains names for feature vector.    
4. Extracting only the measurements on the mean and standard deviation for each measurement. We did not extract variables with meanFreq() values, because it is other parameter of the same feature.  
5. Replacing activity values to descriptive activity names. Descriptive activity names can be found in "activity_labels.txt".  
6. Transforming variable names in  valid R names. We used function **make.names()** and **gsub()**. Information about valid R names can be found in R FAQ   https://cran.r-project.org/doc/FAQ/R-FAQ.html#What-are-valid-names_003f.  
7. Creating tidy datasets by calculating mean values of features for each subject and each activity. We used **aggregate()** function for this purposes.  

<br></br>
<br></br>





