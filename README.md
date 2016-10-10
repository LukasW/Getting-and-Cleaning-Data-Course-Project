Getting and Cleaning Data Course Project
========================================

This repository contains the required work for the assessment for Coursera's [Getting an Cleaning Data Course](https://www.coursera.org/learn/data-cleaning).

The script 'run_analysis.R' contains the required R code for analysing the data from the survey [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The **prepareDataFiles** function downloads and unzips the datn.

The **createTidyDataset** function create a tidy data frame (restricted to average and standard deviation values).

The **summariseAndWriteToFile** function summarises the data set by subject and activity and writes this table the 'sum.txt' file in the current working directory.
