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

The script `run_analysis.R` outputs a file called `tidy.data.txt`. This file contains the average for each variable for each activity and each subject.

Only variables that record the mean and standard deviation are outputted to the file. All other variables are dropped from the output data set. 

### Variable Name Modifications 

The outputted file modifies the variable names as follows to make them more descriptive:-

* 'mean()' is replaced with 'Mean'
* 'std()' is replaced with 'Standard Deviation'
* 'meanFreq' is replaced with 'Mean Freq'
* 'tBody' is replaced with 'Time Body' 
* 'tGravity' is replaced with 'Time Gravity' 
* 'fBody' is replaced with 'Frequency Body'



## Feature Selection 

_The following is taken from the 'features_info.txt' file that accompanies the data set and explains the origin and method for collecting the original data set._

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'UCI HAR Dataset\\features.txt'


## Source

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.