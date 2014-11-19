#Step 1: "Merges the training and the test sets to create one data set."
# read subject training data
train_data = read.table("UCI HAR Dataset/train/subject_train.txt", col.names=c("subject_id"))
# assign row number as the values of ID column
train$ID <- as.numeric(rownames(train_data))
# read training data
X_train = read.table("UCI HAR Dataset/train/X_train.txt")
# assign row number as the values of ID column
X_train$ID <- as.numric(rownames(X_train))
# read activity training data
y_train = read.table("UCI HAR Dataset/train/y_train.txt", col.names=c("activity_id"))
# assign row number as the values of ID column
y_train$ID <- as.numeric(rownames(y_train))
# merge subject_train and y_train to train
train <- merge(train_data, y_train, all=TRUE)
# merge train and X_train
train <- merge(train, X_train, all=TRUE)

# read subject test data
test_data = read.table("UCI HAR Dataset/test/subject_test.txt", col.names=c("subject_id"))
# assign row number as the values of ID column
test_data$ID <- as.numeric(rownames(test_data))
#read testing Data
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
# assign row number as the values of ID column
X_test$ID <- as.numeric(rownames(X_test))
# read activity testing Data
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names=c("activity_id"))
# assign row number as the value of ID column
y_test$ID <- as.numeric(rownames(y_test))
#merge  subject_test and y_test to test
test <- merge(test_data,y_test, all=TRUE)
# merge test and X_test
test <- merge(test, X_test, all=TRUE)

#combine train and test
data1 <- rbind(train,test)




