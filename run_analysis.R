#Getting and Cleaning Data course project
#2015-02-22
#Run_Analysis.R script
library(plyr)
# Part 1
# Merges the training and the test sets to create one data set.
#Reading the training data
x_train_data<-read.table("train\\X_train.txt")
y_train_data<-read.table("train\\Y_train.txt")
subj_train<-read.table("train\\subject_train.txt")
#Reading the test data
x_test_data<-read.table("test\\X_test.txt")
y_test_data<-read.table("test\\Y_test.txt")
subj_test<-read.table("test\\subject_test.txt")
#Merging the X set:
X<-rbind(x_train_data, x_test_data)
#Merging the Y set;
Y<-rbind(y_train_data, y_test_data)
#Merging the subject set
Subj<-rbind(subj_train, subj_test)

#2 Extracts only the measurements on the mean and standard deviation for each measurement. 
columns<-read.table("features.txt")
my_cols<-grep("(mean|std)\\(\\)", columns[,2])
#Setting the names for selected columns:
X_2<-X[, my_cols]
colnames(X_2)<-columns[my_cols,2]

#3 Uses descriptive activity names to name the activities in the data set
act_names<-read.table("activity_labels.txt")
Y[, 1] <- act_names[Y[, 1], 2]
names(Y) <- "Activity"

#4 Appropriately labels the data set with descriptive variable names. 
names(Subj)<-"Subject"
#Merging all the data to one set
Full_set<-cbind(X_2, Y, Subj)


#5 From the data set in step 4, creates a second, 
#independent tidy data set with the average of each 
#variable for each activity and each subject.
x_2_len<-length(names(X_2))
#Calculating the averages on all the columns except the "group by" ones - from 1 to 66
Set_2<-ddply(Full_set, .(Subject, Activity), function(lv_group) colMeans(lv_group[, 1:x_2_len]))


#Writing the set to the file:
write.table(Set_2,file="5_set_means.txt",  row.name=FALSE)
