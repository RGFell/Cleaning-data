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

* The script `run_analysis.R` outputs a file called `tidy.data.txt`. 
* The file is organized by subject ID and then by each activity for that subject.
* Each row in the outputted file contains the average of the readings for each activity and each subject.
* Only variables that record the mean and standard deviation are outputted to the file. All other variables are dropped from the output data set.

### List of Variables

**Note:** In the following variables, XAxis, YAxis and ZAxis denote 3-axis signals in the X, Y, and Z directions. 

*   SubjectID
* 	Activity

#### Time Domain Variables

*   TimeDomainBodyAccelerationMeanXAxis
* 	TimeDomainBodyAccelerationMeanYAxis
* 	TimeDomainBodyAccelerationMeanZAxis
* 	TimeDomainBodyAccelerationStandardDeviationXAxis
* 	TimeDomainBodyAccelerationStandardDeviationYAxis
* 	TimeDomainBodyAccelerationStandardDeviationZAxis
* 	TimeDomainGravityAccelerationMeanXAxis
* 	TimeDomainGravityAccelerationMeanYAxis
* 	TimeDomainGravityAccelerationMeanZAxis
* 	TimeDomainGravityAccelerationStandardDeviationXAxis
* 	TimeDomainGravityAccelerationStandardDeviationYAxis
* 	TimeDomainGravityAccelerationStandardDeviationZAxis
* 	TimeDomainBodyAccelerationJerkMeanXAxis
* 	TimeDomainBodyAccelerationJerkMeanYAxis
* 	TimeDomainBodyAccelerationJerkMeanZAxis
* 	TimeDomainBodyAccelerationJerkStandardDeviationXAxis
* 	TimeDomainBodyAccelerationJerkStandardDeviationYAxis
* 	TimeDomainBodyAccelerationJerkStandardDeviationZAxis
* 	TimeDomainBodyGyroscopeMeanXAxis
* 	TimeDomainBodyGyroscopeMeanYAxis
* 	TimeDomainBodyGyroscopeMeanZAxis
* 	TimeDomainBodyGyroscopeStandardDeviationXAxis
* 	TimeDomainBodyGyroscopeStandardDeviationYAxis
* 	TimeDomainBodyGyroscopeStandardDeviationZAxis
* 	TimeDomainBodyGyroscopeJerkMeanXAxis
* 	TimeDomainBodyGyroscopeJerkMeanYAxis
* 	TimeDomainBodyGyroscopeJerkMeanZAxis
* 	TimeDomainBodyGyroscopeJerkStandardDeviationXAxis
* 	TimeDomainBodyGyroscopeJerkStandardDeviationYAxis
* 	TimeDomainBodyGyroscopeJerkStandardDeviationZAxis
* 	TimeDomainBodyAccelerationMagnitudeMean
* 	TimeDomainBodyAccelerationMagnitudeStandardDeviation
* 	TimeDomainGravityAccelerationMagnitudeMean
* 	TimeDomainGravityAccelerationMagnitudeStandardDeviation
* 	TimeDomainBodyAccelerationJerkMagnitudeMean
* 	TimeDomainBodyAccelerationJerkMagnitudeStandardDeviation
* 	TimeDomainBodyGyroscopeMagnitudeMean
* 	TimeDomainBodyGyroscopeMagnitudeStandardDeviation
* 	TimeDomainBodyGyroscopeJerkMagnitudeMean
* 	TimeDomainBodyGyroscopeJerkMagnitudeStandardDeviation

#### Frequency Domain Variables

* 	FrequencyDomainBodyAccelerationMeanXAxis
* 	FrequencyDomainBodyAccelerationMeanYAxis
* 	FrequencyDomainBodyAccelerationMeanZAxis
* 	FrequencyDomainBodyAccelerationStandardDeviationXAxis
* 	FrequencyDomainBodyAccelerationStandardDeviationYAxis
* 	FrequencyDomainBodyAccelerationStandardDeviationZAxis
* 	FrequencyDomainBodyAccelerationMeanFrequencyXAxis
* 	FrequencyDomainBodyAccelerationMeanFrequencyYAxis
* 	FrequencyDomainBodyAccelerationMeanFrequencyZAxis
* 	FrequencyDomainBodyAccelerationJerkMeanXAxis
* 	FrequencyDomainBodyAccelerationJerkMeanYAxis
* 	FrequencyDomainBodyAccelerationJerkMeanZAxis
* 	FrequencyDomainBodyAccelerationJerkStandardDeviationXAxis
* 	FrequencyDomainBodyAccelerationJerkStandardDeviationYAxis
* 	FrequencyDomainBodyAccelerationJerkStandardDeviationZAxis
* 	FrequencyDomainBodyAccelerationJerkMeanFrequencyXAxis
* 	FrequencyDomainBodyAccelerationJerkMeanFrequencyYAxis
* 	FrequencyDomainBodyAccelerationJerkMeanFrequencyZAxis
* 	FrequencyDomainBodyGyroscopeMeanXAxis
* 	FrequencyDomainBodyGyroscopeMeanYAxis
* 	FrequencyDomainBodyGyroscopeMeanZAxis
* 	FrequencyDomainBodyGyroscopeStandardDeviationXAxis
* 	FrequencyDomainBodyGyroscopeStandardDeviationYAxis
* 	FrequencyDomainBodyGyroscopeStandardDeviationZAxis
* 	FrequencyDomainBodyGyroscopeMeanFrequencyXAxis
* 	FrequencyDomainBodyGyroscopeMeanFrequencyYAxis
* 	FrequencyDomainBodyGyroscopeMeanFrequencyZAxis
* 	FrequencyDomainBodyAccelerationMagnitudeMean
* 	FrequencyDomainBodyAccelerationMagnitudeStandardDeviation
* 	FrequencyDomainBodyAccelerationMagnitudeMeanFrequency
* 	FrequencyDomainBodyBodyAccelerationJerkMagnitudeMean
* 	FrequencyDomainBodyBodyAccelerationJerkMagnitudeStandardDeviation
* 	FrequencyDomainBodyBodyAccelerationJerkMagnitudeMeanFrequency
* 	FrequencyDomainBodyBodyGyroscopeMagnitudeMean
* 	FrequencyDomainBodyBodyGyroscopeMagnitudeStandardDeviation
* 	FrequencyDomainBodyBodyGyroscopeMagnitudeMeanFrequency
* 	FrequencyDomainBodyBodyGyroscopeJerkMagnitudeMean
* 	FrequencyDomainBodyBodyGyroscopeJerkMagnitudeStandardDeviation
* 	FrequencyDomainBodyBodyGyroscopeJerkMagnitudeMeanFrequency



## Original data set.

For details on the original data set, please review the file 'features_info.txt' file that accompanies the data set.
