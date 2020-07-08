## reading the test set of observations
test <- read.table("./dataset/test/X_test.txt")

## reading the subjects and activities columns
subs <- read.table("./dataset/test/subject_test.txt")
acts <- read.table("./dataset/test/y_test.txt")

## binding subjects and activities columns in the same order as the train set.
test <- cbind(test,acts)
test <- cbind(test,subs)

## processing the columns vector
source("names.R")

## naming the columns on the train dataframe
names(test) <- cols

## clearing up the environment
rm(subs,acts,cols)
