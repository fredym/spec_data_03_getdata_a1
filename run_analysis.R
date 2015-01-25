
# You should create one R script called run_analysis.R that does the following:


# 1. Merges the training and the test sets to create one data set ----

# Load the trainig data
training.data <- read.table(file="UCI HAR Dataset/train/X_train.txt")
subjects <- read.table(file="UCI HAR Dataset/train/subject_train.txt")
activities <- read.table(file="UCI HAR Dataset/train/y_train.txt")

# Combine all the training data
training.data <- cbind(subjects, training.data, activities)
rm(subjects, activities)


# Load the test data
test.data <- read.table(file="UCI HAR Dataset/test/X_test.txt")
subjects <- read.table(file="UCI HAR Dataset/test/subject_test.txt")
activities <- read.table(file="UCI HAR Dataset/test/y_test.txt")

# Combine all the training data
test.data <- cbind(subjects, test.data, activities)
rm(subjects, activities)


# Merge training and test data
dat <- rbind(training.data, test.data)




# 2. Extracts only the measurements on the mean and standard deviation for each
# measurement.





# 3. Uses descriptive activity names to name the activities in the data set





# 4. Appropriately labels the data set with descriptive variable names.





# 5. From the data set in step 4, creates a second, independent tidy data set with
# the average of each variable for each activity and each subject.
