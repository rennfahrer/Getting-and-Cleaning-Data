---
title: "CodeBook"
author: "Denis"
date: "Sunday, February 22, 2015"
output: html_document
---
#CodeBook for  Coursera "Getting and Cleaning the Data" course.

#The program
The script works with data in the current directory. 
1. Training sets are read from directory "train", files X_train.txt, Y_train.txt and subject_train.txt accordingly.
   Test sets are read from directory "test", from files: X_test.txt, Y_test.txt and subject_test.txt.
   Sets are appended(first train, test after). 
2. At the second step the program loads measurement names from file "features.txt", selects only one with means and standard deviations with function grep and saves to set X_2 onle these columns
3. Setting the name for activity column
4. Setting the name for subject column and merging all the sets to one.
5. The program calculates the x set width after selecting the mean/std columns. 
   The averages for each group of {Subject, Activiy} are calculated using the ddply and colmeans function.
   Results are saved to the Set_2 data set.

At the final step the tidy set Set_2 is saved to the file "5_set_means.txt"

#Variables
- x_train_data, y_train_data and subject_train contain original training data 
- x_test_data, y_test_data and subject)test contains original test data
- X, Y and Subj - full data sets(training and test data)
- X_2 contains only means and standard deviations for the X set
- Full_set - contains all the original data in one set
- x_2_len - quantity of mean\std columns in the X set(for group by)
- Set_2 - final set containing the averages for {Subject, Activity} groups



   
    

