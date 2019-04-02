##loading the data

train <- read.csv("train.csv", header=TRUE)
test <- read.csv("test.csv", header=TRUE)

#add a survived variable to test to allow for combining datasets

test.survived <- data.frame(survived= rep("none", nrow (test)), test[,])

#combine data sets

data.combined <- rbind(train, test.survived)

str(data.combined)
