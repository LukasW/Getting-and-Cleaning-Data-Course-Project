## Functions for Getting and Cleaning Data Course Project 

## Downloads the datasets and extracts them to the current working directory.
prepareDataFiles <- function () {
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "fuci.zip")
    unzip("fuci.zip")
}

## Loads the datasets, merges test and train sets and converts them to a 
## tidy data set.
## For informatation about the data frame check the code book.
createTidyDataset <- function() {
    require(dplyr)
    load.training <- function(dataset) {
        ## Load the data
        dataset_dir <- paste0(basedir, "/", dataset, "/")
        training_set <- read.table(paste0(dataset_dir, "X_", dataset, ".txt"), header = FALSE)
        training_labels <- read.table(paste0(dataset_dir, "y_", dataset, ".txt"), header = FALSE)
        subject_train <- read.table(paste0(dataset_dir, "subject_", dataset, ".txt"), header = FALSE)
        
        ## Set colnames
        colnames(training_set) <- features$V2
        ## Reduce to mean and standard deviation measurements
        training_set <- training_set[,grepl("-(mean|std)\\(\\)-", colnames(training_set))]
        ## Rename columns to tidy names
        colnames(training_set) <- tolower(gsub("(.*?)-(.*?)\\(\\)-(.*)", "\\1_\\2_\\3", colnames(training_set)))
        ## Add subject column
        cbind(subject = subject_train$V1, activity = sapply(training_labels$V1,function(x) {activity_labels$V2[x]}), training_set)
    }
    basedir <- "./UCI HAR Dataset"
    activity_labels <- read.table(paste0(basedir,"/activity_labels.txt"), header = FALSE)
    features <- read.table(paste0(basedir,"/features.txt"), header = FALSE)
    train <- load.training("train")
    test <- load.training("test")
    ## Merge train and test and sort by subject 
    arrange(rbind(train, test), subject)
}

## Summarises the data set by subject and activity and writes this table the 'sum.txt' file in the current
## working directory
summariseAndWriteToFile <- function() {
    createTidyDataset() %>%
        group_by(subject, activity) %>%
        summarise_each(funs(mean)) %>%
        write.table("sum.txt", row.name = FALSE)
}