url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "data1.zip")

# Unzip the data and examine it manually.

test1 <- read.table("X_test.txt")
test2 <- read.table("y_test.txt")
test3 <- read.table("subject_test.txt")

# Combine the two datasets, "y-test" is the activities, "X-test" is the various variables
test <- cbind(test3, test2, test1)

# Turn test[,1] into a factor of the different activities
test[,2] <- factor(test[,2], levels = c(1:6), labels = c("Walking", "Walking Up", "Walking Down", "Sitting", "Standing", "Laying"))

# Add names to the dataset variables
var_data <- read.table("features.txt")
var_names <- c("Subject", "Activity", as.character(var_data[,2]))
names(test) <- var_names

# Find the columns names with "mean()" and "std()", grep gives the indices
means <- grep("mean\\(\\)", var_names)
sds <- grep("std\\(\\)", var_names)

# Subset the data with the grep indices
test <- test[, c(1, 2, means, sds)]

# Add a column that contains the label "Test"
test <- cbind(Group = c("Test"), test)

##################
# Repeat the same procedure for training set

train1 <- read.table("X_train.txt")
train2 <- read.table("y_train.txt")
train3 <- read.table("subject_train.txt")

# Combine the two datasets, "y-test" is the activities, "X-test" is the various variables
train <- cbind(train3, train2, train1)

# Turn test[,1] into a factor of the different activities
train[,2] <- factor(train[,2], levels = c(1:6), labels = c("Walking", "Walking Up", "Walking Down", "Sitting", "Standing", "Laying"))

# Add names to the dataset variables

names(train) <- var_names

# Subset the data with the grep indices
train <- train[, c(1, 2, means, sds)]

# Add a column that contains the label "Test"
train <- cbind(Group = c("Train"), train)

complete <- rbind(train, test)

summary <- ddply(complete, .(Group, Subject, Activity), function(x) apply(x[,4:69], 2, mean))


write.table(complete, file = "complete.txt", sep = ",")
write.table(summary, file = "summary.txt", sep = ",")