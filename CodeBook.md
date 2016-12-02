---
title: "Codebook template"
author: "Harun Polat"
date: "2.12.16"
output:
  html_document:
    keep_md: yes
---

## Project Description
The aim of the project was to tidy up data sets regarding fitness tracker. The data set had to be cleaned up and summarized 
##Study design and data processing

###Collection of the raw data
The data was provided by coursera with the following url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Notes on the original (raw) data 
-
##Creating the tidy datafile

###Guide to create the tidy data file
1. read data in from working directory containing the project files
2. Merges the training and the test sets to create one data set
3. name the columns
4. Extracts only the measurements on the mean and standard deviation for each measurement, get columns that have std or mean in their names 
5. set #562,563 for activity and subject columns
6. Uses descriptive activity names to name the activities in the data set
7. Appropriately labels the data set with descriptive variable names, get variable names
8. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
9. order tidy data set by subject increasing order
10. 


###Cleaning of the data
It .r script basically merges the training and test data, gives the activity ids names, renames the columns and combines the different files appropriately
##Description of the variables in the Tidy_dataset.txt file
General description of the file including:
 - rows: 180   cols:88
 -
 [1] "Subject"                                               "Activity"                                             
 [3] "Time_BodyAccelerometer-mean-X"                         "Time_BodyAccelerometer-mean-Y"                        
 [5] "Time_BodyAccelerometer-mean-Z"                         "Time_BodyAccelerometer-std-X"                         
 [7] "Time_BodyAccelerometer-std-Y"                          "Time_BodyAccelerometer-std-Z"                         
 [9] "Time_GravityAccelerometer-mean-X"                      "Time_GravityAccelerometer-mean-Y"                     
[11] "Time_GravityAccelerometer-mean-Z"                      "Time_GravityAccelerometer-std-X"                      
[13] "Time_GravityAccelerometer-std-Y"                       "Time_GravityAccelerometer-std-Z"                      
[15] "Time_BodyAccelerometerJerk-mean-X"                     "Time_BodyAccelerometerJerk-mean-Y"                    
[17] "Time_BodyAccelerometerJerk-mean-Z"                     "Time_BodyAccelerometerJerk-std-X"                     
[19] "Time_BodyAccelerometerJerk-std-Y"                      "Time_BodyAccelerometerJerk-std-Z"                     
[21] "Time_BodyGyroscope-mean-X"                             "Time_BodyGyroscope-mean-Y"                            
[23] "Time_BodyGyroscope-mean-Z"                             "Time_BodyGyroscope-std-X"                             
[25] "Time_BodyGyroscope-std-Y"                              "Time_BodyGyroscope-std-Z"                             
[27] "Time_BodyGyroscopeJerk-mean-X"                         "Time_BodyGyroscopeJerk-mean-Y"                        
[29] "Time_BodyGyroscopeJerk-mean-Z"                         "Time_BodyGyroscopeJerk-std-X"                         
[31] "Time_BodyGyroscopeJerk-std-Y"                          "Time_BodyGyroscopeJerk-std-Z"                         
[33] "Time_BodyAccelerometerMagnitude-mean"                  "Time_BodyAccelerometerMagnitude-std"                  
[35] "Time_GravityAccelerometerMagnitude-mean"               "Time_GravityAccelerometerMagnitude-std"               
[37] "Time_BodyAccelerometerJerkMagnitude-mean"              "Time_BodyAccelerometerJerkMagnitude-std"              
[39] "Time_BodyGyroscopeMagnitude-mean"                      "Time_BodyGyroscopeMagnitude-std"                      
[41] "Time_BodyGyroscopeJerkMagnitude-mean"                  "Time_BodyGyroscopeJerkMagnitude-std"                  
[43] "Frequency_BodyAccelerometer-mean-X"                    "Frequency_BodyAccelerometer-mean-Y"                   
[45] "Frequency_BodyAccelerometer-mean-Z"                    "Frequency_BodyAccelerometer-std-X"                    
[47] "Frequency_BodyAccelerometer-std-Y"                     "Frequency_BodyAccelerometer-std-Z"                    
[49] "Frequency_BodyAccelerometer-meanFreq-X"                "Frequency_BodyAccelerometer-meanFreq-Y"               
[51] "Frequency_BodyAccelerometer-meanFreq-Z"                "Frequency_BodyAccelerometerJerk-mean-X"               
[53] "Frequency_BodyAccelerometerJerk-mean-Y"                "Frequency_BodyAccelerometerJerk-mean-Z"               
[55] "Frequency_BodyAccelerometerJerk-std-X"                 "Frequency_BodyAccelerometerJerk-std-Y"                
[57] "Frequency_BodyAccelerometerJerk-std-Z"                 "Frequency_BodyAccelerometerJerk-meanFreq-X"           
[59] "Frequency_BodyAccelerometerJerk-meanFreq-Y"            "Frequency_BodyAccelerometerJerk-meanFreq-Z"           
[61] "Frequency_BodyGyroscope-mean-X"                        "Frequency_BodyGyroscope-mean-Y"                       
[63] "Frequency_BodyGyroscope-mean-Z"                        "Frequency_BodyGyroscope-std-X"                        
[65] "Frequency_BodyGyroscope-std-Y"                         "Frequency_BodyGyroscope-std-Z"                        
[67] "Frequency_BodyGyroscope-meanFreq-X"                    "Frequency_BodyGyroscope-meanFreq-Y"                   
[69] "Frequency_BodyGyroscope-meanFreq-Z"                    "Frequency_BodyAccelerometerMagnitude-mean"            
[71] "Frequency_BodyAccelerometerMagnitude-std"              "Frequency_BodyAccelerometerMagnitude-meanFreq"        
[73] "Frequency_BodyBodyAccelerometerJerkMagnitude-mean"     "Frequency_BodyBodyAccelerometerJerkMagnitude-std"     
[75] "Frequency_BodyBodyAccelerometerJerkMagnitude-meanFreq" "Frequency_BodyBodyGyroscopeMagnitude-mean"            
[77] "Frequency_BodyBodyGyroscopeMagnitude-std"              "Frequency_BodyBodyGyroscopeMagnitude-meanFreq"        
[79] "Frequency_BodyBodyGyroscopeJerkMagnitude-mean"         "Frequency_BodyBodyGyroscopeJerkMagnitude-std"         
[81] "Frequency_BodyBodyGyroscopeJerkMagnitude-meanFreq"     "angle(tBodyAccelerometerMean,gravity)"                
[83] "angle(tBodyAccelerometerJerkMean),gravityMean)"        "angle(tBodyGyroscopeMean,gravityMean)"                
[85] "angle(tBodyGyroscopeJerkMean,gravityMean)"             "angle(X,gravityMean)"                                 
[87] "angle(Y,gravityMean)"                                  "angle(Z,gravityMean)"   

##Sources
-
