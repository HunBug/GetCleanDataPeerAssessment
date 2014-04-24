dataDirectory = "UCI HAR Dataset"
print("Loading helper functions")
source("helperFunctions.R")
print("Loading test...")
testData <- loadUciData(dataDirectory,"test")
print("Loading train...")
trainData <- loadUciData(dataDirectory,"train")
print("Merging...")
data <- rbind.data.frame(trainData,testData)
print("Subsetting to first dataset...")
firstSet <- data[,grep("mean|std|actLab",colnames(data))]
print("Aggregating second dataset...")
secondSet <- aggregate(data[,-563],by=list(data$actNum,data$actLab,data$subject), FUN=mean)
outputLabel <- addLabels(dataDirectory,secondSet[,ncol(secondSet)-1])
secondSet <- cbind.data.frame(secondSet,outputLabel)
colnames(secondSet)[ncol(secondSet)-1] <- "actLab"