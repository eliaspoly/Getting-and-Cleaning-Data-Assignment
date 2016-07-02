# download the zip file and unzip in working directory
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
f <- file.path(getwd(),"data.zip")
download.file(url,f)
unzip(zipfile="data.zip",exdir=getwd())

#Load the labels and the features into the global environment
ActivityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
Features <- read.table("UCI HAR Dataset/features.txt")

#Load the datasets for train and test
library(readr) #read_table works much much faster than read.table on my slow computer ;)
DataSubjectTest <- read_table("UCI HAR Dataset/test/subject_test.txt")
DataFeatureTest <- read_table("UCI HAR Dataset/test/X_test.txt")
DataActivityTest <- read_table("UCI HAR Dataset/test/Y_test.txt")
DataSubjectTrain <- read_table("UCI HAR Dataset/train/subject_train.txt")
DataFeatureTrain <- read_table("UCI HAR Dataset/train/X_train.txt")
DataActivityTrain <- read_table("UCI HAR Dataset/train/Y_train.txt")

#Create sensible, meaningful column names
library(dplyr) # no need to use dplyr but I like to try different approaches
ActivityLabels <- rename(ActivityLabels, activity = V1, Type = V2)
colnames(DataSubjectTest) <- "subject"
colnames(DataSubjectTrain) <- "subject"
colnames(DataActivityTest) <- "activity"
colnames(DataActivityTrain) <- "activity"
colnames(DataFeatureTest) <- Features[,2]
colnames(DataFeatureTrain) <- Features[,2]

#Now that all tables of Train and Test are the same size, we can merge the datasets by columns
MergeTrain <- cbind(DataActivityTrain, DataSubjectTrain, DataFeatureTrain)
MergeTest <- cbind(DataActivityTest, DataSubjectTest, DataFeatureTest)

#Given the same amount of variables, we can merge test and train into one dataset by rows
AllMerged <- rbind(MergeTrain, MergeTest)

#remove processed data (not essential but unclutters environment)
remove(DataActivityTrain,DataFeatureTrain,DataSubjectTrain,DataActivityTest,
       DataFeatureTest,DataSubjectTest,MergeTest,MergeTrain,Features)

#Calculate the mean and standard deviation for each measurement:

#Create a vector with all column names
AllNames <- colnames(AllMerged)
# Create a logical vector returning desired variables (e.g. "mean" out of "tBodyAcc-mean()-X")
Vars <- (grepl("activity" , AllNames) | 
                grepl("subject" , AllNames) | 
                grepl("mean.." , AllNames) | 
                grepl("std.." , AllNames) 
)
# Create a dataframe containing "true" variables
TrueVars <- AllMerged[,Vars == TRUE]
# Add real activity names to dataframe from existing Labels
Activities <- merge(TrueVars, ActivityLabels,
                          by="activity",
                          all.x=TRUE)
# Subset data and compute requested summary statistics and reorder to create tidy dataset
run_analysis <- aggregate(. ~subject + activity, Activities, mean)
run_analysis <- run_analysis[order(run_analysis$subject, run_analysis$activity),]
# store results in a textfile in working directory
write.table(run_analysis, "run_analysis.txt", row.name=FALSE)