# Getting-and-Cleaning-Data
Coursera project 
2015-02-22

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

