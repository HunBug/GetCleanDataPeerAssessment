GetCleanDataPeerAssessment Code Book
====================================

Original features
-----------------
All information of the original data can be found on the http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones website and in the "UCI HAR Dataset" folder in this repo.

Helper functions
----------------
Helper functions can be found int the *helperFunctions.R* script file. This file contains three functions:
* **getActivityLabels** - get the activity value - label mapping from the *activity_labels.txt* file
* **addLabels** - adds a label column to a frame filled withthe activity labels corresponding the original activity values
* **loadUciData** - load data from a given data set. Data set can be "test" or "train". After loading the "feature" , "output" and the "subject" data then they are merged together. After this the activity labels are adde to the dataframe. All original column get its name from the *features.txt* file.

After merging the data together some new columns are added:
* **actNum** - activity number, the output values
* **actLab** - same as above but with sting labels instead of numeric values
* **subject** - the ID of the subject
 
Main script
-----------
First of all a variable, *dataDirectory*, is set to the data folder. The test and the train data are read from this folder and merged together the *data* data frame. After this two result data frame is created:
* **firstSet** - contains all mean and standard deviation column with the "subject" and the "output" columns
* **secondSet** - aggregated data table, contains means of all variables grouped by the output activity and the subject id
