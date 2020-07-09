## loading packages
library(data.table)
library(dplyr)
library(reshape2)

## reading the training set of observations
train <- fread("./UCI HAR Dataset/train/X_train.txt")
## reading the train subjects and activities columns
subs <- fread("./UCI HAR Dataset/train/subject_train.txt")
acts <- fread("./UCI HAR Dataset/train/y_train.txt")
## binding subjects and activities columns
train <- cbind(train,acts)
train <- cbind(train,subs)

## reading the test set of observations
test <- fread("./UCI HAR Dataset/test/X_test.txt")
## reading the test subjects and activities columns
subs <- fread("./UCI HAR Dataset/test/subject_test.txt")
acts <- fread("./UCI HAR Dataset/test/y_test.txt")
## binding subjects and activities columns in the same order as the train set.
test <- cbind(test,acts)
test <- cbind(test,subs)
rm(subs,acts)

## processing variable names vector
## reading the column names vector
cols <- fread("./UCI HAR Dataset/features.txt")
## changing names to lower case (4.)
cols <- tolower(cols$V2)
## appending subject and activity to column labels vector
cols <- append(cols,c("activity","subject"))

## naming the columns on the train dataframe
names(train) <- cols
## naming the columns on the test dataframe
names(test) <- cols
rm(cols)

## names are the same for both dataframes, merging with rbind() (1.)
merged <- rbind(train,test)
rm(train,test)

## reading activity descriptions
acts <- fread("./UCI HAR Dataset/activity_labels.txt")
## renaming activities with descriptions (3.)
merged$activity <- acts$V2[match(merged$activity,acts$V1)]
rm(acts)

## subsetting means and standard deviations (2.)
merged <- select(merged,contains(c("mean()","std()","activity","subject")))
## removing parenthesis from variable names (4.)
names(merged) <- gsub("\\(\\)","",names(merged))

## creating tidy data set (5.)
tidyset <- melt(merged, id = c("activity", "subject"))
tidyset <- dcast(tidyset, activity + subject ~ variable, mean)
write.table(tidyset,file = "tidyset.txt",row.name=FALSE)
