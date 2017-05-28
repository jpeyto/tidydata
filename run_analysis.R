run_analysis <-  function() {
  
  require("data.table")
  require("reshape2")
  require("dplyr")
  library("tibble")
  
  zipfile <- "getdata%2Fprojectfiles%2FUCI HAR Dataset.zip"
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  if(!file.exists(zipfile)) {
    download.file(fileURL, zipfile)
  } 
  unzip(zipfile)
  
  # 561x2 data frame specifying row number and factor for observation label
  features<-read.table("./UCI HAR Dataset/features.txt")
  # 6x2 data frame specifying row number and factor for activity label
  activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
  
  # 7352x1 data frame of Values 1 to 30 identifying subject in test data
  subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
  # 7352x561 data frame of test set observations (names specified by features.txt)
  X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
  # 7352x1 data frame of Values 1 to 6 identifying activity in test data (activity specified by activity_labels.txt)
  y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
    
  # 7352x1 data frame of Values 1 to 30 identifying subject in training data
  subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
  # 7352x561 data frame of training set observations (names specified by features.txt)
  X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
  # 7352x1 data frame of Values 1 to 6 identifying activity in training data (activity specified by activity_labels.txt)
  y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
  
  # Find required mean and standard deviation variables from the features vector
  mean<-grep("\\bmean()\\b",features[,2])
  std<-grep("\\bstd()\\b",features[,2])
  cols<-unique(c(mean,std))
  cols<-cols[order(cols)]
  
  # Combine test and train data
  subject<-rbind(subject_train, subject_test)
  y<-rbind(y_train,y_test)
  X<-rbind(X_train, X_test)
  
  # Change activity labels to descriptive labels 
  activity_labels<-mutate(activity_labels, V2 = c("Walking", "Walking_Upstairs", "Walking_Downstairs", "Sitting", "Standing", "Laying"))
  y<-mutate(y, V1 = activity_labels[V1,2])
  
  # Create data frame of subject identifiers, activity identifiers and variables
  df<-data.frame(subject[,1], y[,1])
  df<-cbind(df,X[,cols])
  
  # Adjust variable names
  names<-as.vector(features[cols,2])
  colNames<-sapply(make.names(names=names, unique=TRUE), function(x) strsplit(x, split=c("[.]")) %>% unlist() %>% paste(collapse=""))
  colNames<-sapply(colNames, function(x) ifelse(substr(x,1,1)=="f", paste("Frequency",substr(x,2,nchar(x)),sep=""), x))
  colNames<-sapply(colNames, function(x) ifelse(substr(x,1,1)=="t", paste("Time",substr(x,2,nchar(x)),sep=""), x))
  colNames<-sapply(colNames, function(x) sub("std", x, replacement="_StdDev"))
  colNames<-sapply(colNames, function(x) sub("mean", x, replacement="_Mean"))
  colNames<-sapply(colNames, function(x) sub("Mag", x, replacement="_Magnitude"))
  colNames<-sapply(colNames, function(x) sub("Acc", x, replacement="_Accelerometer"))
  colNames<-sapply(colNames, function(x) sub("Jerk", x, replacement="_Jerk"))
  colNames<-sapply(colNames, function(x) sub("Body", x, replacement="_Body"))
  colNames<-sapply(colNames, function(x) sub("Gyro", x, replacement="_Gyro"))
  colNames<-sapply(colNames, function(x) sub("X", x, replacement="_X-axis"))
  colNames<-sapply(colNames, function(x) sub("Y", x, replacement="_Y-axis"))
  colNames<-sapply(colNames, function(x) sub("Z", x, replacement="_Z-axis"))
  names(colNames)<-c(1:length(colNames))

  # Update data frame with column names
  colnames(df) <- c("Subject","Activity",colNames)

  # Create tidy data set with subject and activity identifiers as columns, a column identifying the variable and a column for the value
  dfmelt<-melt(df, id.vars=c("Subject", "Activity"))
  
  #dfmelt<-mutate(dfmelt, variable=variable)

  # Calculate the mean of each variable for each activity
  activity_mean<-sapply(unique(dfmelt$Activity), function(x) {y <- filter(dfmelt, Activity==x); sapply(unique(dfmelt$variable), function(x) mean(y[y$variable==x,4]))})
  activity_mean<-as.data.frame(activity_mean)  
  colnames(activity_mean)<-paste(unique(dfmelt$Activity),"Activity_Mean", sep="_")
  rownames(activity_mean)<-unique(dfmelt$variable)

  # Calculate the mean of each variable for each subject
  subject_mean<-sapply(unique(dfmelt$Subject), function(x) {y <- filter(dfmelt, Subject==x); sapply(unique(dfmelt$variable), function(x) mean(y[y$variable==x,4]))})
  subject_mean<-as.data.frame(subject_mean)
  colnames<-unique(dfmelt$Subject)
  colnames(subject_mean)<-colnames
  colnames<-colnames[order(colnames)]
  subject_mean<-subject_mean[,colnames]
  colnames(subject_mean)<-paste("Subject",colnames,"Mean", sep="_")
  rownames(subject_mean)<-unique(dfmelt$variable)

  # Write mean to tidydata_mean.txt
  mean_data<-data.frame(activity_mean, subject_mean)
  mean_data<-rownames_to_column(mean_data,"Variable")
  write.table(mean_data, file="tidydata_mean.txt", row.name=FALSE)
  
  # Output tidy data set
  colnames(dfmelt)<-c("Subject", "Activity", "Variable", "Value")
  dfmelt
}