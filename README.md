---
title: "Getting and Cleaning Data Assignment"
output: github_document
---

This R-script/code (run_analysis.R) performs the following analysis:

## Assignment Submission Files

    run_analysis.R
    README.md
    CookBook.md

## General functionality of the code

    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement.
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive activity names.
    Creates a second, independent tidy data set with the average of each variable for each activity and each           subject.

## procedure

    Download the data set, https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

    Unzip the data set into YOURDIRECTORY and you should see a folder named UCI HAR Dataset in YOURDIRECTORY

    Load RStudio and set your working directory using setwd("YOURDIRECTORY")

    Load the R script using source("run_analysis.R")

    Run the R script using run_analysis.R
    
For more information on the data set, please refer to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
