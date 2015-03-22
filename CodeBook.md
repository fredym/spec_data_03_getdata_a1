# Code Book

This project produces two datasets based on data recorded from the sensors of
smartphones attached to 30 subjects while performing common daily activities.





## Source

The authors of the original dataset requests the following citation:

>Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.
>A Public Domain Dataset for Human Activity Recognition Using Smartphones.
>21th European Symposium on Artificial Neural Networks, Computational Intelligence
>and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

The original data was acquired from the following URL:

  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Although this is a copy provided by the instructors of the _Getting and Cleaning
Data_ instructors. The original dataset and a broader description of the methods
used to produce it can be found at the following URL:

  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data is provided as a set of six text files divided into two
groups: test and train. Each group is comprised or three files: one contains the
subject id for each observation, the second contains the activity id for each
observation and the third contains the _feature vector_ (variables measured) for
each observation.





## Cleanup

The _activity_ variable was originally coded as an integer variable (range 1 to
6). Descriptive activity names were applied in the form of a factor.

Descriptive names were also applied to the names of the variables collected by
the instruments. In the original data documentation this is referred as the
_feature vector_.





## Transformations

The train files were combined to rebuild the train dataset, the same was done
with the test files. Then the test and train datasets were merged into one
single dataset (dat). Only 68 variables were conserved: the mean and standart
deviation of each feature, the subject id and the activity.

A second dataset (dat2) was produced by calculating the average of each variable
per subject per activity.

Both datasets (dat and dat2) have the same variable names. The difference
between both datasets is the meaning of each row. For dat each row represents an
observation that was performed. For dat2 each row represents a subject-activity
combination and the variables represent the average of the value recorded for
each subject-activity combination.





## Variables

- **subject**: Numeric identifier of the subject.
- **activity**: Identifies the activity that the subject was performing when the
    observation was made.
- 66 variables with measures described in the file features_info.txt of the
    original data source. Only the mean and the standard deviation is included
    for each measurement.
