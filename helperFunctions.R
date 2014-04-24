loadUciData <- function(directory,setName)
{
  featureLabelsFilename <- paste(getwd(),"/",directory,"/features.txt", sep="") 
  featuresFilename <- paste(getwd(),"/",directory,"/",setName,"/X_",setName, ".txt", sep="")
  outputFilename <- paste(getwd(),"/",directory,"/",setName,"/y_",setName, ".txt", sep="")
  subjectsFilename <- paste(getwd(),"/",directory,"/",setName,"/subject_",setName, ".txt", sep="")
  
  featureLabels <- read.table(featureLabelsFilename,header=FALSE)
  features <- read.table(featuresFilename,header=FALSE)
  output <- read.table(outputFilename,header=FALSE)
  subjects <- read.table(subjectsFilename,header=FALSE)
  
  colnames(features) <- featureLabels[,2]
  
  features <- cbind.data.frame(features,output)
  colnames(features)[ncol(features)] <- "actNum"
  outputLabel <- addLabels(directory,features[,ncol(features)])
  features <- cbind.data.frame(features,outputLabel)
  colnames(features)[ncol(features)] <- "actLab"
  features <- cbind.data.frame(features,subjects)
  colnames(features)[ncol(features)] <- "subject"
  
  return(features)
}

getActivityLabels <- function(directory)
{
  activityLabelsFilename <- paste(getwd(),"/",directory,"/activity_labels.txt", sep="") 
  activityLabels <- read.table(activityLabelsFilename,header=FALSE)
  return(activityLabels)
}

addLabels <- function(directory,outputNum)
{
  activityLabels <- getActivityLabels(directory)
  outputLabel <- factor(outputNum,levels=activityLabels[,1],labels=activityLabels[,2]) 
  return(outputLabel)
}