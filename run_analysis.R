## read in data
features <- read.table("UCI HAR Dataset/features.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

## 1) merge the data
X_bind <- rbind(X_test, X_train)
y_bind <- rbind(y_test, y_train)
subject_bind <- rbind(subject_test, subject_train)
names(X_bind) <- features$V2
names(y_bind) <- "Activity"
names(subject_bind) <- "Subject"
data <- cbind(subject_bind,y_bind,X_bind)

## 2) extract the data
good <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
good_measurement <- data[, c(1,2,good+2)]

## 3) replace the labels by activities
library(plyr)
good_measurement$Activity <- mapvalues(good_measurement$Activity, from = 1:6, 
          to = c("Walking", "Walking_UpStairs", "Walking_DownStairs", "Sitting", "Standing", "Lying"))

## 4) name the variables
## done above. good_measurement is the tidy data set


## 5) create a independent tidy data set with the average of 
## each variable for each activity and each subject


result <- good_measurement[1:180, ]
act <- c("Walking", "Walking_UpStairs", "Walking_DownStairs", "Sitting", "Standing", "Lying")
row <- 1
for (s in 1:30) {
        for (a in 1:6) {
                result[row, 1] <- s
                result[row, 2] <- act[a]
                tmp <- good_measurement[good_measurement$Subject==s & good_measurement$Activity==act[a], ]
                result[row, 3:68] <- colMeans(tmp[,3:68])
        }
        row <- row+1
}
write.table(result, "tidy_data_set.txt",row.name=FALSE)








