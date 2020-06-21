# 1.  At first I'll load the data for test
setwd("C:/Users/Admin/Documents/Coursera_project/test")
test1 <- read.table("X_test.txt")
test2 <- read.table("y_test.txt")
test3 <- read.table("subject_test.txt")
# Up next I'm going to change the column names of test 1 , 2 and 3
setwd("C:/Users/Admin/Documents/Coursera_project")
feature <- read.table("features.txt")
colnames(test1) <- feature$V2
colnames(test2) <- "labels"
colnames(test3) <- "subject"
test <- cbind(test3,test2, test1)
# Now that the dataset for "test" is loaded, I'm going to load the data
# for "train" 
setwd("C:/Users/Admin/Documents/Coursera_project/train")
train1 <- read.table("X_train.txt")
colnames(train1) <- feature$V2
train2 <- read.table("y_train.txt") 
colnames(train2) <- "labels"
train3 <- read.table("subject_train.txt")
colnames(train3) <- "subject"
train <- cbind(train3, train2, train1)
# Now I'm going to combine "test" and "train" dataset to obtain the 
# final product
data <- rbind(test, train)


# 2. To extract the measurements based only on the mean and S.D:
data1 <- grep("mean|std", names(data), value = TRUE)
data <- data[ , seq_along(data1)]

# 3. Now I'm going to ensure that the "labels" column gets descriptive
# activity names.
setwd("C:/Users/Admin/Documents/Coursera_project")
label <- read.table("activity_labels.txt")
data$labels <- factor(data$labels, levels = c(1,2,3,4,5,6), label = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")) 

# 4. I've changed some of the variable names for ease of understanding
name <- gsub("Acc", "Accelerometer", names(data))
name <- gsub("std", "Standard_deviation", name)
colnames(data) <- name

# 5. I'm going to use the dplyr package to group the observations by
# subject and labels and then take the mean for each of the variables
tidydata <- data %>% 
  group_by(subject, labels) %>% 
  summarise_each(funs(mean))

write.table(tidydata, file = "tidydata.text", row.names = FALSE, col.names = TRUE )
