gacd
====

##Course Project for Getting and Cleaning Data
###from the Data Science Specialization offered by Johns Hopkins

The `run_analysis.R` script in this repo creates a tidy data set from Samsung test and training data described here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The script assumes that it resides inside the folder `UCI HAR Dataset`, i.e. that `run_analysis.R` resides at the same level as the `/test` and `/train` folders.

The script accomplishes all five requirements of the course project:

1. merge the data from `/test` and `/train`
2. extract the measurements for mean and standard deviation
3. use descriptive activity names, i.e. SITTING, STANDING, WALKING, etc.
4. use descriptive variable names for measurements, i.e. tBodyAcc_mean_X
5. create a tidy data set with the average of each measurement for every combo of subject+activity

<!-- -->

Details of script processing:

1. merge the data from `/test` and `/train`

    a. read 3 test files and 3 training files
    
    b. produce 6 data frames containing the subjects, activities, and measurements for each group
    
    c. use rbind to append test to training without re-ordering
    
    d. produce 3 data frames containing all subjects, all activities, and all measurements

2. extract the measurements for mean and standard deviation


3. use descriptive activity names, i.e. SITTING, STANDING, WALKING, etc.


4. use descriptive variable names for measurements, i.e. tBodyAcc_mean_X


5. create a tidy data set with the average of each measurement for every combo of subject+activity


