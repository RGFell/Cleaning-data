# Getting and Cleaning Data Course Project

## Introduction

This reposistory contains files for the implentation of the Coursera Class [Getting and Cleaning Data](https://www.coursera.org/course/getdata 'Coursera: Getting and Cleaning Data').


### Files In Repository

The repository contains the following files:-

* **README.md** - This readme file.
* **CodeBook.md** - The code book explaining the data contained in the raw data set.
* **run_analysis.R** - The R script to generate a tidy data set based on the raw data.
* **tidy.data.txt** - The output of the script. This is a tidy data set with the average of each variable for each activity and each subject.


## Project Requirements

This Coursera project requires one R script called run_analysis.R that does the following:- 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Raw Data

The raw data for this project can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

For information on the contents of the raw data files, review the included [Code Book](https://github.com/dvd940/Cleaning-data/blob/master/CodeBook.md "Code Book"). 


### Unused Data

The data in the 'UCI HAR Dataset\\test\\Inertial Signals'and 'UCI HAR Dataset\\train\\Inertial Signals' directories are not used in this implementation. 

## Script Usage

### Dependancies
The following libraries are required:-

* data.table
* reshape2

These libraries can be installed by running the following commands in the R console.

```
install.packages('data.table')
install.packages('reshape2')
```

### Instructions
1. Download the raw data files from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unzip the files into the project folder keeping the folder structure as follows.
```
└───UCI HAR Dataset
        ├───test
        │   └───Inertial Signals
        └───train
            └───Inertial Signals
```
3. Run the script `run_analysis.R`

        source('run_analysis.R')

#### Script Output

The script generates a text file called `tidy.data.txt` that will contains a tidy data set with the average of each variable for each activity and each subject.


## Codebook

The code book for this project is located at this [URL](https://github.com/dvd940/Cleaning-data/blob/master/CodeBook.md "Code Book"). 

## Other Details

### Project Environment

This script was written using R version 3.1.2 (2014-10-31) ("Pumpkin Helmet")

### Script Details

The `run_analysis.R` script performs the following actions:-

1. Read in the raw data sets.
2. Combine the training and test sets into a single dataset using the `cbind` and `rbind` functions. [Assignment step 1]
3. Keep only the subject.id, activity and any column that contains a mean or standard deviation. **Note:** For mean, any varaible name that is a mean is included. This means that `meanFreq` data is also kept. [Assignment step 2]
4. The activty values are replaced with descriptive names. [Assignment step 3]
5. The variable names are changed to descriptive labels. **Note:** Some terms such as 'AccJerk' are not modified. [Assignment step 4]
6. The data is melted and recast into a data set showing the average of each variable for each activity and each subject. The data is then outputted to a text file. [Assignement step 5]
