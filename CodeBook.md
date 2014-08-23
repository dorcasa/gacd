Tidy Data Set Labels and Values
====

###column 1
    subject
        ID number of person (subject) whose activity was measured
        Integer from 1 to 30
    
###column 2
    activity
        Descriptive name of activity, one of the following
        LAYING
        SITTING
        STANDING
        WALKING
        WALKING_DOWNSTAIRS
        WALKING_UPSTAIRS

###columns 3 to 68
    measurements
        all numeric values
    
    guide to prefixes and suffixes
    
        t = time domain signal
        f = frequency domain signal (Fast Fourier Transform applied to some signals)
        mean = mean of measurements of this signal
        std = standard deviation of measurements of this signal
        X, Y, or Z = axis of measurement (not relevant for all signals)
    
    guide to all 66 measurement names
    
        BodyAcc = body component of acceleration signal
            tBodyAcc_mean_X
            tBodyAcc_mean_Y
            tBodyAcc_mean_Z
            tBodyAcc_std_X
            tBodyAcc_std_Y
            tBodyAcc_std_Z

            fBodyAcc_mean_X
            fBodyAcc_mean_Y
            fBodyAcc_mean_Z
            fBodyAcc_std_X
            fBodyAcc_std_Y
            fBodyAcc_std_Z

        GravityAcc = gravity component of acceleration signal
            tGravityAcc_mean_X
            tGravityAcc_mean_Y
            tGravityAcc_mean_Z
            tGravityAcc_std_X
            tGravityAcc_std_Y
            tGravityAcc_std_Z

        BodyAccJerk = jerk signal related to body component of acceleration signal
            tBodyAccJerk_mean_X
            tBodyAccJerk_mean_Y
            tBodyAccJerk_mean_Z
            tBodyAccJerk_std_X
            tBodyAccJerk_std_Y
            tBodyAccJerk_std_Z

            fBodyAccJerk_mean_X
            fBodyAccJerk_mean_Y
            fBodyAccJerk_mean_Z
            fBodyAccJerk_std_X
            fBodyAccJerk_std_Y
            fBodyAccJerk_std_Z

        BodyGyro = body component of gyroscope signal
            tBodyGyro_mean_X
            tBodyGyro_mean_Y
            tBodyGyro_mean_Z
            tBodyGyro_std_X
            tBodyGyro_std_Y
            tBodyGyro_std_Z

            fBodyGyro_mean_X
            fBodyGyro_mean_Y
            fBodyGyro_mean_Z
            fBodyGyro_std_X
            fBodyGyro_std_Y
            fBodyGyro_std_Z

        BodyGyroJerk = jerk signal related to body component of gyroscope signal
            tBodyGyroJerk_mean_X
            tBodyGyroJerk_mean_Y
            tBodyGyroJerk_mean_Z
            tBodyGyroJerk_std_X
            tBodyGyroJerk_std_Y
            tBodyGyroJerk_std_Z
            
        BodyAccMag = magnitude of body component of acceleration signal
            tBodyAccMag_mean
            tBodyAccMag_std
            
        GravityAccMag = magnitude of gravity component of acceleration signal
            tGravityAccMag_mean
            tGravityAccMag_std
            
        BodyAccJerkMag = magnitude of jerk signal related to body component of acceleration signal
            tBodyAccJerkMag_mean
            tBodyAccJerkMag_std
            
        BodyGyroMag
        
        BodyGyroJerkMag
        
        BodyAcc
            
