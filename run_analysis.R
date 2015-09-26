# loading data
library(dplyr)
setwd("C:/Users/keeton/Desktop/C3/Course Project/")
source("load_data.R")

# merge training and test sets to create one dataset
trainData <- cbind(subject_train,Y_train,X_train)
testData <- cbind(subject_test,Y_test,X_test)
data <- rbind(trainData,testData)

# naming dataset 
names(data) <- c("subject", "activity", features[[2]])


#Extracting only the measurements on the mean and 
#standard deviation for each measurement. 
indexMean <- grep("mean()", names(data), fixed=TRUE)
indexStd <- grep("std()", names(data), fixed=TRUE)
index <- sort(c(indexMean,indexStd))
data <- data [,c(1,2,index)]

#Replacing activity values to descriptive activity names
data$activity = activities$V2[data$activity]

# Correcting variable names 
valid_names <- names(data) %>% make.names %>% 
                 gsub(pattern = "...",replacement = ".",fixed = TRUE) %>%
                 gsub(pattern = "..",replacement = ".",fixed = TRUE) %>%
                 gsub(pattern = "BodyBody",replacement = "Body",fixed = TRUE)

names(data)<-valid_names

#Creating tidy data set with the average of each variable 
#for each activity and each subject.

tidyData <- aggregate(data[3:length(names(data))],
                     by = list(data$subject,data$activity),
                     FUN = mean)
names(tidyData)[1:2] <- names(data)[1:2]

# save results to txt file
write.table(tidyData, file = "tidyData.txt", row.names = FALSE)
