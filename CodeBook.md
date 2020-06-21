---
title: "Codebook.md"
author: "Debika Ghosh"
date: "21/06/2020"
output: word_document
---

**CodeBook explaining variables and the data**

### Description of the Data:

This experiment is based on wearable computing. The inital dataset was a Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
We have grouped the data by their activity category for each of the 30 individuals and have obtained the mean for each of the corresponding variables.

### Description of the variables:

1. subject- This column lists all the thirty individuals involved in the experiment.
2. labels- This column consists of the different daily activities for each of the individuals.
3. tBodyAccelerometer- Computation of various statistical measures based on total body acceleration signal. (From col 3-45)
4. tGravityAccelerometer- Computation of various statistical measures based on gravity from the total acceleration. (col 46-79)

For the purpose of obtaining a tidy data, the data set has been grouped by the subjects and their corresponding daily activities, i.e for each subject, there exists a record of 6 activities.
Then went on to take the average of each of the variables for each activity of each subject.