library(dplyr)

# read in training data files
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header=F)
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt", header=F)
strain <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=F)

# read in test data files
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt", header=F)
ytest <- read.table("./UCI HAR Dataset/test/y_test.txt", header=F)
stest <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=F)

# merge data
xmerged <- rbind(xtrain, xtest)
ymerged <- rbind(ytrain, ytest)
smerged <- rbind(strain, stest)

# create full data set with subject, activity, and observations
full_data <- cbind(smerged, ymerged, xmerged)

# now lets rename the columns using the feature names
features <- read.table("./UCI HAR Dataset/features.txt", header=F, stringsAsFactors=F)
names(full_data) <- c("subject", "activity", make.unique(features$V2))

# now select only the subject, activity, mean, and std cols
data <- tbl_df(full_data)
mean_std_data <- select(data, subject, activity, contains('mean()'),contains('std()'))

# replace activity ids with readable names
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=F, stringsAsFactors=F)
activity_names <- activity_labels$V2
mean_std_data <- mutate(mean_std_data, activity = activity_names[activity])

# calculate the mean for each (subj,activity) group
by_subj_activity <- group_by(mean_std_data, subject, activity)
summary <- summarise_each(by_subj_activity, funs(mean), contains('mean()'),contains('std()'))

write.table(summary, "./UCI_tidy.txt", row.names=FALSE)