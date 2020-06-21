---
title: "README.md"
author: "Debika Ghosh"
date: "21/06/2020"
output: word_document
---
## README File to explain the analysis file:

At first, to combine the train and test data set, I downloaded the zip file from the link provided, post which I unzipped it and loaded the two data sets in R studio using "read.table". I gave the columns similar names and later went on to use "rbind" function to combine the two datasets.

To obtain the variables based on mean and standard deviations of the observations, I have used the "grep" function. I then subset the data accordingly.

I loaded the activity labels dataset in my Rstudio and used the "factor" function to replace the digits(1-6) with the names of the daily activities.

I've used the "gsub" function to rename a few variables for better understanding.

Lastly, I used the "dplyr" package to make use of the pipe operator and use the functions like group_by and summarize_each for ease of calculation.
At last I just used write.table to obtain a tidy data and save it as a text file in my working directory.