#Getting and Cleaning Data course project
#2015-02-22
#Run_Analysis.R script
library(plyr)
# Part 1
# Merges the training and the test sets to create one data set.
course_dir<-"C:\\Users\\Denis\\Desktop\\Google Drive\\Data analysis\\Getting and Cleaning Data - Coursera\\Data\\UCI HAR Dataset"
setwd(course_dir)
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