## 
## Coursera: Getting and Cleaning Data Course Project
##



## This function sets the working environment up by downloading the required
## files installing the the necessary libraries and getting in the correct
## working directory.

dataLocation <- "./UCI HAR Dataset"

setup_project<-function() {
    
   dataurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
   destination <- "data.zip"
   
   if (!file.exists(destination)) {
        download.file(dataurl, destination, method = "curl")
   } else {
    
   }
 
   if(!dir.exists(dataLocation)) {
       unzip(destination, overwrite = TRUE)
   } 
   
   print("Files ready. You can now continue with the process.")
}


## This function performs the merging and analysis on the downloaded data and
## outputs the final data frame to a csv file.

run_analysis <- function() {
    
    if(!dir.exists(dataLocation)) {
        print ("Error: Data Directory not found")
        stop()
    }
    
    ## Process Measurement Observations
    XTrainData <- read.table(paste(dataLocation, "train", "X_train.txt", sep="/"))
    XTestData  <- read.table(paste(dataLocation, "test", "X_test.txt", sep="/")) 
    XData      <- rbind(XTrainData, XTestData)
    featNames  <- read.table(paste(dataLocation, "features.txt", sep="/"))
    names(XData) <- featNames[,2]
    
    ## Select only mean and std deviation measurements
    columns   <- grep("mean\\(\\)|std\\(\\)", featNames[,2])
    XData     <- XData[,columns]
    
    ## Process Activities
    YTrainData <- read.table(paste(dataLocation, "train", "y_train.txt", sep="/"))
    YTestData  <- read.table(paste(dataLocation, "test", "y_test.txt", sep="/"))
    YData      <- rbind(YTrainData, YTestData)[,1]
    
    ## Rename Activities
    activities <-
        c("walking", "walking upstairs", "walking downstairs", "sitting", "standing", "laying")
    YData     <- activities[YData]
    
    ## Process Subjects
    SubTrainData <- read.table(paste(dataLocation, "train", "subject_train.txt", sep="/"))
    SubTestData  <- read.table(paste(dataLocation, "test", "subject_test.txt", sep="/"))
    SubData      <- rbind(SubTrainData, SubTestData)
    
    ## Merge all data together
    XData <- cbind(YData, XData)
    XData <- cbind(SubData, XData)
    
    ## Rename the Columns
    names(XData) <- rename_col(names(XData))
    XData
    
    ## Create a second, independent tidy data set
    ## with the average of each variable for each activity and each subject.
    
    XData <- group_by(XData, subject, activities)
    XData <- summarise_each(XData, funs(mean))
    
    write.table(XData, file = "output.txt", row.name=FALSE)
}

## Renaming function using regular expressions.

rename_col <- function(oldNames) {
    
    newNames <- gsub("V1", "subject", oldNames)
    newNames <- gsub("YData", "activities", newNames)
    newNames <- gsub("^t", "time-", newNames)
    newNames <- gsub("^f", "frequency-", newNames)
    newNames <- gsub("Acc", "acceleration", newNames)
    newNames <- gsub("Mag", "magnitude", newNames)
    newNames <- gsub("BodyBody", "body", newNames)
    newNames <- tolower(newNames)
}