GetCleanDataPeerAssessment
==========================

Getting and Cleaning Data / Peer Assessments /Getting and Cleaning Data Project

Requirements
------------

To start the data cleaning you have to have the following files in the current working directory of R:
* **run_analysis.R** - the main script of data cleaning
* **helperFunctions.R** - this script file contains some helper function needed for the cleaning process
* **"Human Activity Recognition Using Smartphones" data** - the main script assumes that the original zip file is unompressed in the working directory, so the data are in the "UCI HAR Dataset" directory. If it is not true, please change the value of the "dataDirectory" variable at the beginig of the main script

Usage
-----

Just start the main script: *source("run_analysis.R")*. The result will be stored in the *firstSet* and in the *secondSet* data frames.

Code book
---------
Details of the data and the processing can be found in the CodeBook.md
