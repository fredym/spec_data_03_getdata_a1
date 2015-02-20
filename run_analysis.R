
# You should create one R script called run_analysis.R that does the following:


# 1. Merges the training and the test sets to create one data set ----

# Load the trainig data
training.data <- read.table(file="UCI HAR Dataset/train/X_train.txt")
subjects <- read.table(file="UCI HAR Dataset/train/subject_train.txt")
activities <- read.table(file="UCI HAR Dataset/train/y_train.txt")

# Combine all the training data
training.data <- cbind(training.data, subjects, activities)
rm(subjects, activities)


# Load the test data
test.data <- read.table(file="UCI HAR Dataset/test/X_test.txt")
subjects <- read.table(file="UCI HAR Dataset/test/subject_test.txt")
activities <- read.table(file="UCI HAR Dataset/test/y_test.txt")

# Combine all the training data
test.data <- cbind(test.data, subjects, activities)
rm(subjects, activities)


# Merge training and test data
dat <- rbind(training.data, test.data)
rm(training.data, test.data)



# 2. Extracts only the measurements on the mean and standard deviation for each
# measurement.

dat <- dat[,c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228,
              240:241, 253:254, 266:271, 345:350, 424:429, 503:504, 516:517,
              529:530, 542:543, 562:563)]





# 3. Uses descriptive activity names to name the activities in the data set
dat[,2] <- factor(dat[,2],
                  levels=1:6,
                  labels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS",
                           "SITTING", "STANDING", "LAYING" ))





# 4. Appropriately labels the data set with descriptive variable names.





# 5. From the data set in step 4, creates a second, independent tidy data set with
# the average of each variable for each activity and each subject.
