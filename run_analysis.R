# run_analysis.R

# note: I did not use fread to fast read files
#       because fread was not available for my version of R
#       (I have an older Mac which does not support newer R)
# so I included two print statements that mark the script's start and end
print("processing files...")

# read the training set files
# subjects, activities, measurements
train_sub<-read.table("train/subject_train.txt")
train_act<-read.table("train/y_train.txt")
train_msr<-read.table("train/X_train.txt")

# read the test set files
# subjects, activities, measurements
test_sub<-read.table("test/subject_test.txt")
test_act<-read.table("test/y_test.txt")
test_msr<-read.table("test/X_test.txt")

# merge train and test files to create 3 data frames
# one for subjects, one for activities, and one for measurements
# rbind simply appends 2nd set to 1st set without re-ordering
all_sub<-rbind(train_sub,test_sub)
all_act<-rbind(train_act,test_act)
all_msr<-rbind(train_msr,test_msr)

# add column names to data frames for subjects and activities
names(all_sub)<-c("subject")
names(all_act)<-c("activity")

# add column names to data frame for measurements
# read names from second column of features.txt file
features<-read.table("features.txt",stringsAsFactors=FALSE)
measurements<-features[,2]
names(all_msr)<-c(measurements)

# extract the mean and standard deviation for each measurement
# subset measurements all_msr using the column names with mean() or std()
# note: regular expression [^F] excludes measurements of meanFreq
all_msd<-all_msr[grep("mean[^F]|std",names(all_msr))]

# use descriptive activity names in the data set
# replace activity ID # (1 thru 6) with corresponding activity name
all_act[,1]<-gsub(1,"WALKING",all_act[,1])
all_act[,1]<-gsub(2,"WALKING_UPSTAIRS",all_act[,1])
all_act[,1]<-gsub(3,"WALKING_DOWNSTAIRS",all_act[,1])
all_act[,1]<-gsub(4,"SITTING",all_act[,1])
all_act[,1]<-gsub(5,"STANDING",all_act[,1])
all_act[,1]<-gsub(6,"LAYING",all_act[,1])

# label the measurements with descriptive variable names
# variable names are already descriptive
# do minimal cleaning to improve clarity and validity in R

# fix typo "BodyBody" and replace with "Body"
names(all_msd)<-gsub("BodyBody","Body",names(all_msd))
# replace hyphens with underscores
names(all_msd)<-gsub("-","_",names(all_msd))
# remove parentheses
names(all_msd)<-gsub("\\()","",names(all_msd))

# combine 3 data frames into one data frame
# subject, activity, and subset of measurements with mean and stddev
all<-data.frame(all_sub,all_act,all_msd)

# create a second, independent tidy data set
# with the average of each variable for each activity and each subject

# use the reshape2 library to melt the data
# creating a separate row for each combination of subject and activity
# with the variable name and value of one of the 66 measurements
library(reshape2)
all_melt<-melt(all,id=c("subject","activity"),measure.vars=c(names(all)[3:68]))

# cast the data to find the average (mean) of each measurement
# for every combination of subject and activity
averages<-dcast(all_melt, subject + activity ~ variable, mean)

# write the averages to a table with no row names
write.table(averages,file="tidydata.txt",row.names=FALSE)

print("tidy data set written to tidydata.txt")
