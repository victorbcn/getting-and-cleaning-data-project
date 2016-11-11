---
output:
  pdf_document: default
  html_document: default
---
# README


## Introduction

This repository contains the files and output data for the project assignment in the Coursera Data
Science specialization.

The used data comes from an experiment using the accelerometers in a Samsung Galaxy S on subjects performing different activities.

The original data is available in the url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The project that originally took the data is located in: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones



## Contents

The files included are the following

- output.txt: Processed Data
- run_analysis.R: Script that processes the data
- CodeBook.md: Document with explanation of the contents of the data
- README.md: this file


## What does the script do?

The *run_analysis.R* starts by downloading the original data from the url specified above. The Data is downloaded to the currect working directory (check with *getwd()*) with the name *data.zip*. Afterwards, the data is uncompressed to the directory *UCI HAR Dataset*.

Immediately after, both the training data and the test data ara merged into a single data table and the names for every of the features is added.

From the total features, only features containing standard deviation and mean are selected, using regular expressions over the column names.

In the next step the activity indexes from the training and test data are also merged. As the activities are encoded using integers (check file *features.txt*), a conversion to strings is performed.

After that, the subject indices from train and test are merged.

A merge then is perfomed by binding the columns for subjects, activities and measurements. This result is stored in the variable *XData*.

For readibility, a transformation of the column names is performed. Subject and Activity columns get a name, and the measurement columns get renamed using simple regular expressions: not clear abbreviations are expanded, and the strings are all converted to lower case.

The final step is to obtain a data set which contains the mean of every measurement for every subject and activity. This is performed by grouping the data by subject and activities, and afterwards summarising every one of the other variables and applying the mean.

## How to execute the script?

Please, source the script by using the *source* function, and afterwards run the following functions:

* setup_project(): This will download the required data files from the project urls.
* run_analysis(): This will process the data downloaded previously and will write to disk a file called *output.csv*