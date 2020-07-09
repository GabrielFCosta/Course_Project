### Course_Project

#### Getting and Cleaning Data Course Project

#### Code Book

*Author: Gabriel Costa*

-----

This code book modifies and updates the file *features_info.txt*, provided with the
data used in the project.

The variables used in the project are sensor signals (accelerometer and gyroscope) obtained from smartphones. Only the means and standard deviations from each variable group were used to create a tidy data set of the means per activity and subject for each variable. 

Original variable names were formatted to lower case and had the parenthesis removed.

New variables included in the merged dataset were "activity" and "subject".

-----

* #### activity
Identifies the activity from which the sensor data was obtained. There are five different activities:   
WALKING      
WALKING_UPSTAIRS    
WALKING_DOWNSTAIRS     
SITTING    
STANDING    
LAYING

* #### subject
Identiifes the subject that perfomed the activity, numbered from 1 to 30.

#### Numeric sensor signal variables:
Sensor signal variables can be classified into time domain signals and frequency domain signals. These two classes can each be divided into further two groups: means and standard deviations.

* #### means of the means for the time domain signals
tbodyacc-mean-x   
tbodyacc-mean-y           
tbodyacc-mean-z           
tgravityacc-mean-x       
tgravityacc-mean-y        
tgravityacc-mean-z        
tbodyaccjerk-mean-x      
tbodyaccjerk-mean-y       
tbodyaccjerk-mean-z       
tbodygyro-mean-x         
tbodygyro-mean-y          
tbodygyro-mean-z          
tbodygyrojerk-mean-x     
tbodygyrojerk-mean-y      
tbodygyrojerk-mean-z      
tbodyaccmag-mean         
tgravityaccmag-mean       
tbodyaccjerkmag-mean      
tbodygyromag-mean        
tbodygyrojerkmag-mean

* #### means of the means for the frequency domain signals
fbodyacc-mean-x           
fbodyacc-mean-y          
fbodyacc-mean-z           
fbodyaccjerk-mean-x       
fbodyaccjerk-mean-y      
fbodyaccjerk-mean-z       
fbodygyro-mean-x          
fbodygyro-mean-y         
fbodygyro-mean-z          
fbodyaccmag-mean          
fbodybodyaccjerkmag-mean   
fbodybodygyromag-mean   
fbodybodygyrojerkmag-mean  

* #### means of the standard deviations for the time domain signals
tbodyacc-std-x           
tbodyacc-std-y            
tbodyacc-std-z            
tgravityacc-std-x        
tgravityacc-std-y         
tgravityacc-std-z         
tbodyaccjerk-std-x       
tbodyaccjerk-std-y        
tbodyaccjerk-std-z        
tbodygyro-std-x          
tbodygyro-std-y           
tbodygyro-std-z           
tbodygyrojerk-std-x      
tbodygyrojerk-std-y       
tbodygyrojerk-std-z       
tbodyaccmag-std          
tgravityaccmag-std        
tbodyaccjerkmag-std       
tbodygyromag-std         
tbodygyrojerkmag-std      

* #### means of the standard deviations for the frequency domain signals
fbodyacc-std-x            
fbodyacc-std-y           
fbodyacc-std-z          
fbodyaccjerk-std-x        
fbodyaccjerk-std-y       
fbodyaccjerk-std-z        
fbodygyro-std-x           
fbodygyro-std-y          
fbodygyro-std-z           
fbodyaccmag-std           
fbodybodyaccjerkmag-std     
fbodybodygyromag-std      
fbodybodygyrojerkmag-std    

-----
