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
    all numeric values
    t = time domain signal
    f = frequency domain signal (Fast Fourier Transform applied to some signals)
    mean = mean of measurements of this signal
    std = standard deviation of measurements of this signal
    X, Y, or Z = axis of measurement (not relevant for all signals)
    
    BodyAcc = body component of acceleration signal
        tBodyAcc_mean_X
        tBodyAcc_mean_Y
        tBodyAcc_mean_Z
        tBodyAcc_std_X
        tBodyAcc_std_Y
        tBodyAcc_std_Z

    GravityAcc = gravity component of acceleration signal
        tGravityAcc_mean_X
        tGravityAcc_mean_Y
        tGravityAcc_mean_Z
        tGravityAcc_std_X
        tGravityAcc_std_Y
        tGravityAcc_std_Z
