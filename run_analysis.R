# Load libraries
library("data.table")
library("reshape2")

# Read in training and test sets.
X.train.set <- read.table("UCI_HAR_Dataset//train//X_train.txt")
Y.train.set <- read.table("UCI_HAR_Dataset//train//y_train.txt")
subject.train.set <- read.table("UCI_HAR_Dataset//train//subject_train.txt")
X.test.set <- read.table("UCI_HAR_Dataset//test//X_test.txt")
Y.test.set <- read.table("UCI_HAR_Dataset//test//y_test.txt")
subject.test.set <- read.table("UCI_HAR_Dataset//test//subject_test.txt")

# [Assignment step 3] 
# Use descriptive activity names to name the activities in the data set 
activity.labels <- read.table("UCI_HAR_Dataset//activity_labels.txt")[, 2] # activity data is in second column
Y.train.set[, 2] = activity.labels[Y.train.set[, 1]]
Y.test.set[, 2] = activity.labels[Y.test.set[, 1]]

# [Assignment step 1] 
# Combine training and test sets into one data set using cbind and rbind. 
all.train.data <- cbind(subject.train.set, Y.train.set, X.train.set)
all.test.data <- cbind(subject.test.set, Y.test.set, X.test.set)
all.data <- rbind(all.train.data, all.test.data)

# [Assignment step 2] 
# Extract only the measurements on the mean and standard deviation for each measurement.

# First, update column names
feature.names <- read.table("UCI_HAR_Dataset//features.txt", stringsAsFactors = FALSE ) 
column.names <- c("subject.id", "activity", "activity.labels", feature.names[, 2]) # feature names data is in second column
names(all.data) <- column.names

# Then create a dataset called all.mean.std.data which contains only mean and standard deviation columns. 
keep.columns <- grepl('mean|std', colnames(all.data))  # Columns (Mean or Standard Deviation will be kept)
keep.columns[1:3] <- TRUE # Also ensure we keep subject.id, acitity and activity.label
all.mean.std.data <- all.data[, keep.columns]

# [Assignment step 4] 
# Appropriately labels the data set with descriptive variable names  
column.names <- colnames(all.mean.std.data) # Get all of our current variable names.

# Use regular expressions to make the variable names more descriptive.
column.names <- gsub('-mean\\(\\)-', ' Mean ', column.names)
column.names <- gsub('-mean\\(\\)', ' Mean', column.names)
column.names <- gsub('-std\\(\\)-', ' Standard Deviation ', column.names)
column.names <- gsub('-std\\(\\)', ' Standard Deviation', column.names)
column.names <- gsub('-meanFreq\\(\\)-', ' Mean Freq ', column.names)
column.names <- gsub('-meanFreq\\(\\)', ' Mean Freq', column.names)
column.names <- gsub('tBody', 'Time Body', column.names) 
column.names <- gsub('tGravity', 'Time Gravity', column.names) 
column.names <- gsub('fBody', 'Frequency Body', column.names)

names(all.mean.std.data) <- column.names  # write back the new columns name to all.mean.std.data.

# [Assignment step 5]
# From the data set in step 4, create a second, independent tidy data set with the 
# average of each variable for each activity and each subject.
melted.data <- melt(all.mean.std.data, id=c("subject.id","activity.labels"))
tidy.data <- dcast(melted.data, subject.id + activity.labels ~ variable, mean)
write.table(tidy.data, "tidy.data.txt", sep=",", row.names = FALSE)  # Write the tidy data to a txt file.


