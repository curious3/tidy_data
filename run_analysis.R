# Read measure names
features <- read.table("./features.txt")

# Read activity names
activity_names <- read.table("./activity_labels.txt")
colnames(activity_names) <- c("value", "activity")

# subjects in test
subj_test <- read.table("./test/subject_test.txt")
colnames(subj_test) <- c("subject")

# activities in test like 1 (WALKING), etc
y_test <- read.table("./test/y_test.txt")
colnames(y_test) <- c("activity")

# Measurements from test
X_test <- read.table("./test/X_test.txt", comment.char = "")
colnames(X_test) <- features[,2]

# test data
test <- cbind(subj_test, y_test, X_test)

# subjects in train
subj_train <- read.table("./train/subject_train.txt")
colnames(subj_train) <- c("subject")

# activities
y_train <- read.table("./train/y_train.txt")
colnames(y_train) <- c("activity")

# Measurements
X_train <- read.table("./train/X_train.txt", comment.char = "")
colnames(X_train) <- features[,2]

# training data
train <- cbind(subj_train, y_train, X_train)

# combined test + training
test_train_data <- rbind(test, train)

# Get the measures with mean/std in their names
data_colnames <- colnames(test_train_data)
mean_cols <- grep("-mean", data_colnames)
std_cols <- grep("-std", data_colnames)

# subset with only mean/std columns
mean_std_data <- test_train_data[c(1, 2, mean_cols, std_cols)]

# aggregate (mean) by activity and subject
data <- aggregate(. ~ activity + subject, data = mean_std_data, FUN = mean)

# merge with activity names to replace 1 with WALKING, etc
data <- merge(x = activity_names, 
              y = data, 
              by.x = "value", 
              by.y = "activity")

# 1st column contains number for activities, not needed
tidy_data <- data[,-1]

# write the tidy data
write.table(tidy_data, file="./tidy_data.txt", row.names = FALSE)