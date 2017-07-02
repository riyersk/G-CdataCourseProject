X_test <- read.csv("UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "")
X_train <- read.csv("UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "")
features <- read.csv("UCI HAR Dataset/features.txt", header = FALSE, sep = "")
y_test <- read.csv("UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = "")
y_train <- read.csv("UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = "")
subject_test = read.csv("UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "")
subject_train = read.csv("UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "")
included <- grepl("mean", features[,2]) | grepl("std", features[,2]) # note which columns to keep
X_test_tidySet <- setNames(X_test, features[,2]) # name the test columns
X_test_tidySet <- X_test_tidySet[, included] # get rid of the extra columns
X_train_tidySet <-setNames(X_train, features[,2]) # name the train columns
X_train_tidySet <- X_train_tidySet[,included] # get rid of the extra columns
rm(included, X_test, X_train, features) # don't need these anymore; get rid of it
X_test_tidySet <- cbind(y_test, X_test_tidySet) # add the test activity data
X_test_tidySet <- cbind(subject_test, X_test_tidySet) # add the test subject data
X_train_tidySet <- cbind(y_train, X_train_tidySet) # add the train activity data
X_train_tidySet <- cbind(subject_train, X_train_tidySet) #add the train subject data
tidySet <- rbind(X_train_tidySet, X_test_tidySet) # combine the test and train data
rm(X_train_tidySet, X_test_tidySet, y_test, y_train, subject_test, subject_train) # don't need these
colnames(tidySet)[1] = 'subject' # name the subject column
colnames(tidySet)[2] = 'activity' # name the activity column
tidySet$activity <- gsub('1', 'walking', tidySet$activity) # rename the activities with descriptive names
tidySet$activity <- gsub('2', 'walking upstairs', tidySet$activity)
tidySet$activity <- gsub('3', 'walking downstairs', tidySet$activity)
tidySet$activity <- gsub('4', 'sitting', tidySet$activity)
tidySet$activity <- gsub('5', 'standing', tidySet$activity)
tidySet$activity <- gsub('6', 'laying', tidySet$activity)
names(tidySet) <- tolower(names(tidySet)) # change the column names to lower case
summarySet <- aggregate(tidySet, list(tidySet$activity, tidySet$subject), FUN = mean) # have a summary set with the means of each subject and activity
summarySet <- subset(summarySet, select = -c(subject, activity)) # these columns are now duplicates; remove them
colnames(summarySet)[1] = "activity" # name the activity column
colnames(summarySet)[2] = "subject" # name the subject column
summarySet <- summarySet[, c(2, 1, 3:ncol(summarySet))] # swap the first two columns so subject comes first