# Getting and Cleaning Data Course Project Code Book

## Data Source

The data set used in this project was obtained from the **Human Activity Recognition Using Smartphones Dataset**  which was built by studying 30 subjects performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors.

For more information on this data set, visit 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Data Files

The followings files are utilized in this project:-

* `activity_labels.txt` - Contains the activity labels with their corresponding activity name.
* `features.txt` - Contains a list of all features.
* `test\subject_test.txt`- Subject ID for each observation in 'X_test.txt'. 
* `test\X_test.txt` - The test set of observations. 
* `test\y_test.txt`- The test set labels.
* `train\subject_train.txt`- Subject ID for each observation in 'X_train.txt'.
* `train\X_train.txt` - The training set of observations. 
* `train\y_train.txt` - The test set labels.

**Note:** The data contained with the train\\Inertial Signals and train\\Inertial Signals folders were not used for this Coursera project implementation. 

**Note:** For the purpose of this Coursera project, the test and train data were combined into a single date set.

## Tidy Data File

The script `run_analysis.R` outputs a file called `tidy.data.txt`. 

Each row in the outputted file contains the average of the readings for each activity and each subject.

**Note:** Only variables that record the mean and standard deviation are outputted to the file. All other variables are dropped from the output data set.


### Variable Name Modifications 

The outputted file modifies the variable names to make them more descriptive as follows:-

* Names starting with 't' are preceeded by 'TimeDomain'.
* Names starting with 'f' are preceeded by 'FrequencyDomain'.
* 'std' is replaced with 'Standard Deviation'.
* 'Acc' is replaced with 'Acceleration'.
* 'Gyro' is replaced with 'Gyroscope'.
* 'Mag' is replaced with 'Magnitude'.



## Original data set.

For details on the original data set, please review the file 'features_info.txt' file that accompanies the data set.
