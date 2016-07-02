---
title: "Code Book"
output: github_document
---

This code book summarizes the variables used for the run_analysis.R code.
This code book includes information about the source data, the transformations performed after collecting the data and some information about the variables of the resulting data sets.

## Study design

The source data was collected from the UCI Machine Learning Repository to complete an assignment for a Coursera course named Getting and Cleaning Data instructed by Jeff Leek. The assignment involved working with the data set and producing tidy data representation of the source data. Below is a list of the operations done to achieve the outputs.

    # Download the zip file and unzip in working directory
    # Load the labels and the features into the global environment
    # Load the datasets for train and test
    # Create sensible, meaningful column names
    # Merge the datasets by columns
    # Merge test and train into one dataset by rows
    # Remove processed files
    # Create a vector with all column names
    # Create a logical vector returning desired variables
    # Create a dataframe containing "true" variables
    # Add real activity names to dataframe from existing Labels
    # Subset data and compute requested summary statistics and reorder to create tidy dataset
    # store results in a textfile in working directory

## Unique Identifiers

-    subject - The participant ("subject") ID
-    activity - The label of the activity performed when the corresponding measurements were taken

## Measurements for mean and standard deviation of the accelerometer

- tBodyAcc-mean()-X (column 1)
- tBodyAcc-mean()-Y (column 2)
- tBodyAcc-mean()-Z (column 3)
- tBodyAcc-std()-X (column 4)
- tBodyAcc-std()-Y (column 5)
- tBodyAcc-std()-Z (column 6)
- tGravityAcc-mean()-X (column 41)
- tGravityAcc-mean()-Y (column 42)
- tGravityAcc-mean()-Z (column 43)
- tGravityAcc-std()-X (column 44)
- tGravityAcc-std()-Y (column 45)
- tGravityAcc-std()-Z (column 46)
- tBodyAccJerk-mean()-X (column 81)
- tBodyAccJerk-mean()-Y (column 82)
- tBodyAccJerk-mean()-Z (column 83)
- tBodyAccJerk-std()-X (column 84)
- tBodyAccJerk-std()-Y (column 85)
- tBodyAccJerk-std()-Z (column 86)
- tBodyGyro-mean()-X (column 121)
- tBodyGyro-mean()-Y (column 122)
- tBodyGyro-mean()-Z (column 123)
- tBodyGyro-std()-X (column 124)
- tBodyGyro-std()-Y (column 125)
- tBodyGyro-std()-Z (column 126)
- tBodyGyroJerk-mean()-X (column 161)
- tBodyGyroJerk-mean()-Y (column 162)
- tBodyGyroJerk-mean()-Z (column 163)
- tBodyGyroJerk-std()-X (column 164)
- tBodyGyroJerk-std()-Y (column 165)
- tBodyGyroJerk-std()-Z (column 166)
- tBodyAccMag-mean() (column 201)
- tBodyAccMag-std() (column 202)
- tGravityAccMag-mean() (column 214)
- tGravityAccMag-std() (column 215)
- tBodyAccJerkMag-mean() (column 227)
- tBodyAccJerkMag-std() (column 228)
- tBodyGyroMag-mean() (column 240)
- tBodyGyroMag-std() (column 241)
- tBodyGyroJerkMag-mean() (column 253)
- tBodyGyroJerkMag-std() (column 254)
- fBodyAcc-mean()-X (column 266)
- fBodyAcc-mean()-Y (column 267)
- fBodyAcc-mean()-Z (column 268)
- fBodyAcc-std()-X (column 269)
- fBodyAcc-std()-Y (column 270)
- fBodyAcc-std()-Z (column 271)
- fBodyAccJerk-mean()-X (column 345)
- fBodyAccJerk-mean()-Y (column 346)
- fBodyAccJerk-mean()-Z (column 347)
- fBodyAccJerk-std()-X (column 348)
- fBodyAccJerk-std()-Y (column 349)
- fBodyAccJerk-std()-Z (column 350)
- fBodyGyro-mean()-X (column 424)
- fBodyGyro-mean()-Y (column 425)
- fBodyGyro-mean()-Z (column 426)
- fBodyGyro-std()-X (column 427)
- fBodyGyro-std()-Y (column 428)
- fBodyGyro-std()-Z (column 429)
- fBodyAccMag-mean() (column 503)
- fBodyAccMag-std() (column 504)
- fBodyBodyAccJerkMag-mean() (column 516)
- fBodyBodyAccJerkMag-std() (column 517)
- fBodyBodyGyroMag-mean() (column 529)
- fBodyBodyGyroMag-std() (column 530)
- fBodyBodyGyroJerkMag-mean() (column 542)
- fBodyBodyGyroJerkMag-std() (column 543)

## Activity labels

- WALKING (value 1)
- WALKING_UPSTAIRS (value 2)
- WALKING_DOWNSTAIRS (value 3)
- SITTING (value 4)
- STANDING (value 5)
- LAYING (value 6)

*Please refer to run_analysis.R for implementation details.*