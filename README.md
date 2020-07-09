### Course_Project

#### Getting and Cleaning Data Course Project

*Author: Gabriel Costa*

****

##### Packages loaded with **run_analysis.R**:
* `data.table` required for fread().
* `dplyr` required for select().
* `reshape2` required for melt() and dcast().

****

1. Raw data read from text file to dataframe with fread():

	```{r}
	train <- fread("./UCI HAR Dataset/train/X_train.txt")
	subs <- fread("./UCI HAR Dataset/train/subject_train.txt")
	acts <- fread("./UCI HAR Dataset/train/y_train.txt")
	```
2. subject and activity columns bound to main dataframes with cbind(): 

	```{r}
	train <- cbind(train,acts)
	train <- cbind(train,subs)
	```
 
3. Variable names vector read from text file to dataframe with fread().
	+ variable names subsetted from dataframe and converted to lower case:
	
	    ```{r}
    	cols <- tolower(cols$V2)
	    ```
	    
	+ "activity" and "subject" appended to names vector with append():
	
	    ```{r}
	    cols <- append(cols,c("activity","subject"))
	    ```
	    
	+ dataframes names changed to new names vector:
	
	    ```{r}
	    names(train) <- cols
	    names(test) <- cols
	    ```
	    
4. Training and test sets merged with rbind():

    ```{r}
    merged <- rbind(train,test)
    ```
    
5. Activity descriptions read from text file with fread().
    + activity numbers converted to descriptive labels in merged dataset:
    
        ```{r}
        merged$activity <- acts$V2[match(merged$activity,acts$V1)]
        ```
        
6. Means and standard deviations subsetted from merged dataset with select():

    ```{r}
    merged <- select(merged,contains(c("mean()","std()","activity","subject")))
    ```
    
7. Parenthesis removed from variable names with gsub():
  
    ```{r}
    names(merged) <- gsub("\\(\\)","",names(merged))
    ```
    
8. Tidy dataset created with melt() followed by dcast():

    ```{r}
    tidyset <- melt(merged, id = c("activity", "subject"))
    tidyset <- dcast(tidyset, activity + subject ~ variable, mean)
    ```
*****


