## reading the training set of observations
train <- read.table("./dataset/train/X_train.txt")

## reading the subjects and activities columns
subs <- read.table("./dataset/train/subject_train.txt")
acts <- read.table("./dataset/train/y_train.txt")

## binding subjects and activities columns
train <- cbind(train,acts)
train <- cbind(train,subs)

## processing the columns vector
source("names.R")

## naming the columns on the train dataframe
names(train) <- cols

## clearing up the environment
rm(subs,acts,cols)
