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

    a. read 3 test files each with 2947 rows and 3 training files each with 7352 rows
    
    b. produce 6 data frames containing the subjects, activities, and measurements for each group
    
    c. use rbind to append test to training without re-ordering, creating 3 sets each with 10299 rows
    
    d. produce 3 data frames containing all subjects, all activities, and all measurements
    
    e. add column names to all 3 data frames
    
    f. column names of the measurements come from reading all 561 rows in the second column of features.txt
    
    g. result is subjects (10299 x 1), activities (10299 x 1), measurements (10299 x 561)

2. extract the measurements for mean and standard deviation

    a. use grep to subset the measurements data frame
    
    b. grep expression includes column names with mean() or std()
    
    c. grep expression excludes meanFreq() with mean[^F] = mean not followed by F
    
    d. grep finds 66 measurements matching mean() and std()
    
    e. result is new data frame with mean and std measurements (10299 x 66)

3. use descriptive activity names, i.e. SITTING, STANDING, WALKING, etc.

    a. 

4. use descriptive variable names for measurements, i.e. tBodyAcc_mean_X


5. create a tidy data set with the average of each measurement for every combo of subject+activity


