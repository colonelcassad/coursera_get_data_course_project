#file paths
workDir   <- "C:/Users/keeton/Desktop/C3/Course Project/"
testData  <- "C:/Users/keeton/Desktop/C3/Course Project/test"
trainData <- "C:/Users/keeton/Desktop/C3/Course Project/train"

# Load data from raw files. If cached file exists, load from cache
if ("dataset.rda" %in% list.files()) {
     load("dataset.rda")} else {

    #load test dataset
    setwd(testData)
    subject_test<-read.fwf("subject_test.txt",widths=2)
    X_test <- read.csv("X_test.txt",sep="",colClasses="numeric",
                       header=FALSE)
    Y_test <- read.fwf("y_test.txt",width=1)

    #load train dataset
    setwd(trainData)
    subject_train<-read.fwf("subject_train.txt",widths=2)
    X_train <- read.csv("X_train.txt",sep="",colClasses="numeric",
                        header=FALSE)
    Y_train <- read.fwf("y_train.txt",width=1)
     
    setwd(workDir)
    features <- read.csv("features.txt",sep="",
                        colClasses = c("numeric","character"),
                        header = FALSE)
    activities <- read.csv("activity_labels.txt",sep="",
                           colClasses = c("numeric","character"),
                           header = FALSE)
    #cache loaded data to disk
    setwd(workDir)
    save(subject_train,subject_test,X_train,X_test,Y_train,Y_test,
         features,activities,
         file="dataset.rda")
     }
  
      




