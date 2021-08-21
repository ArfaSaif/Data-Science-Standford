
#Download “Data Folder” from the below link. Then, address the following:
 # https://archive.ics.uci.edu/ml/datasets/Spambase (Links to an external site.)

# Change the file extensions to .csv so you can view them in Excel.
# The file spamBaseHeaders explains what every column means in spamBase.csv.
# Import spamBase.csv into R.
spamDatabase = read.csv("spambase.csv")
spamDatabase$X1 = as.factor(spamDatabase$X1)

# Split the dataset to train and test.
library(caret)
spamDatabase = read.csv("spambase.csv", header=FALSE)
spamDatabase$V58= as.factor(spamDatabase$V58)
training = spamDatabase[seq(1, nrow(spamDatabase),10), ]
testing = spamDatabase[seq(2, nrow(spamDatabase),10), ]
# Apply k-nearest neighbor (kknn) to the train set to build a classifier for labeling emails spam vs non-spam.
spamDatabase$V58 
# training$X1 <- as.character(training$X1)
# testing$X1 <- as.character(testing$X1)
model = train(V58~., training, method = "kknn")
# Measure the accuracy of your model on the test set.
predicted = predict(model, testing)
actual = testing$V58
confusionMatrix(predicted, actual)







# Apply Random Forest (rf) to the train set to build a classifier for labeling emails spam vs non-spam. Please note, since Random Forest is pretty complex model, training on large data sets should take a long time. In order to run the model quickly, just use 10% of your data set for training. 
# Measure the accuracy of your model on the test set.
library(caret)
spamDatabase = read.csv("spambase.csv", header=FALSE)
spamDatabase$V58= as.factor(spamDatabase$V58)
training = spamDatabase[seq(1, nrow(spamDatabase),10), ]
testing = spamDatabase[seq(2, nrow(spamDatabase),10), ]
# Apply k-nearest neighbor (kknn) to the train set to build a classifier for labeling emails spam vs non-spam.
spamDatabase$V58 
# training$X1 <- as.character(training$X1)
# testing$X1 <- as.character(testing$X1)
model = train(V58~., training, method = "rf")
# Measure the accuracy of your model on the test set.
predicted = predict(model, testing)
actual = testing$V58
confusionMatrix(predicted, actual)



# use as.character or as.factor to change the numeric number into categorical
# different columns are the frequencies of different words in the email


