# Load libraries
library('data.table')
library('reshape2')

# Read in training and test sets.
X.train.set <- read.table('UCI HAR Dataset//train//X_train.txt')
Y.train.set <- read.table('UCI HAR Dataset//train//y_train.txt')
subject.train.set <- read.table('UCI HAR Dataset//train//subject_train.txt')
X.test.set <- read.table('UCI HAR Dataset//test//X_test.txt')
Y.test.set <- read.table('UCI HAR Dataset//test//y_test.txt')
subject.test.set <- read.table('UCI HAR Dataset//test//subject_test.txt')

# [Assignment step 1] 
# Combine training and test sets into one data set using cbind and rbind. 
all.train.data <- cbind(subject.train.set, Y.train.set, X.train.set)
all.test.data <- cbind(subject.test.set, Y.test.set, X.test.set)
all.data <- rbind(all.train.data, all.test.data)

# [Assignment step 2] 
# Extract only the measurements on the mean and standard deviation for each measurement.

# Step 2.1 First, update column names
feature.names <- read.table('UCI HAR Dataset//features.txt', stringsAsFactors = FALSE ) 
column.names <- c('subject.id', 'activity', feature.names[, 2]) # feature names data is in second column

names(all.data) <- column.names # Update the column names

# Step 2.2 Then create a dataset called all.mean.std.data which contains only mean and standard deviation columns. 
keep.columns <- grepl('mean|std', colnames(all.data))  # Columns (Mean or Standard Deviation will be kept)
keep.columns[1:2] <- TRUE # Also ensure we keep subject.id, acitity
all.mean.std.data <- all.data[, keep.columns]

# [Assignment step 3] 
# Use descriptive activity names to name the activities in the data set 
activity.labels <- read.table('UCI HAR Dataset//activity_labels.txt')[, 2] # activity data is in second column
all.mean.std.data[, 2] = activity.labels[all.mean.std.data[, 2]]  # Replace column 2 (activity) based on the activity label values


# [Assignment step 4] 
# Appropriately labels the data set with descriptive variable names  
column.names <- colnames(all.mean.std.data) # Get all of our current variable names.

# Use regular expressions to make the variable names more descriptive.
column.names <- gsub('subject.id', 'SubjectID', column.names)
column.names <- gsub('activity', 'Activity', column.names)
column.names <- gsub('\\(\\)', '', column.names)
column.names <- gsub('^t', 'TimeDomain', column.names) 
column.names <- gsub('Freq', 'Frequency', column.names)
column.names <- gsub('^f', 'FrequencyDomain', column.names)
column.names <- gsub('-X', 'XAxis', column.names)
column.names <- gsub('-Y', 'YAxis', column.names)
column.names <- gsub('-Z', 'ZAxis', column.names)
column.names <- gsub('-mean', 'Mean', column.names)
column.names <- gsub('-std', 'StandardDeviation', column.names)
column.names <- gsub('Acc', 'Acceleration', column.names)
column.names <- gsub('Gyro', 'Gyroscope', column.names)
column.names <- gsub('Mag', 'Magnitude', column.names)

names(all.mean.std.data) <- column.names  # write back the new columns name to all.mean.std.data.

# [Assignment step 5]
# From the data set in step 4, create a second, independent tidy data set with the 
# average of each variable for each activity and each subject.
melted.data <- melt(all.mean.std.data, id=c('SubjectID','Activity')) #Melt data into DF of activity and sbject.
tidy.data <- dcast(melted.data, SubjectID + Activity ~ variable, mean)  # recast the melted data into a mean of each vairable.

# Write the new tiday data to a file.
write.table(tidy.data, 'tidy.data.txt', sep=',', row.names = FALSE)  # Write the tidy data to a txt file.


