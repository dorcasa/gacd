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
    
    e. result is new data frame with only the mean and std measurements (10299 x 66)

3. use descriptive activity names, i.e. SITTING, STANDING, WALKING, etc.

    a. use gsub to replace integer activity ID # with descriptive name
    
    b. repeat for a total of 6 times to cover all 6 activities
    
    c. result is revised activities data frame (10299 x 1)

4. use descriptive variable names for measurements, i.e. tBodyAcc_mean_X

    a. the variable names are already descriptive, but we can improve clarity and validity in R
    
    b. fix the typo "BodyBody" from features.txt by replacing with "Body" as in features_info.txt
    
    c. replace hyphens ("-") with underscores ("_")
    
    d. remove parentheses
    
    e. result is revised measurements data frame (10299 x 66)

5. create a tidy data set with the average of each measurement for every combo of subject+activity

    a. now the script puts all 3 data frames together - subjects, activities, measurements
    
    b. result is one data frame (10299 x 68) with subject in column 1 and activity in column 2
    
    c. using reshape2, melt the data creating a separate row for each measurement (10299 x 66 = 679734)
    
    d. result is 679734 rows each containing subject, activity, variable name, and measurement
    
    e. then cast the data to find the average (mean) of each measurement for every combo of subject+activity (30 x 6)
    
    f. write the result into a table (180 x 66) with filename "tidydata.txt"
    
    


