library(plotly)
library(ggplot2)
LifeCycleSavings = LifeCycleSavings

rownames(LifeCycleSavings)[which.max(LifeCycleSavings$pop15)]
## Costa Rica

# another way to use which to find which row for that column has the highest value
ind = which(LifeCycleSavings$pop15 == max(LifeCycleSavings$pop15))
rownames(LifeCycleSavings)[ind]

# two ways to use which 
#1. which(datasetName$ columnName == max(datasetName$columnName))
#2. rownames(datasetName)[which.max(datasetName$columnName)]
# better to use the which generic function

which(LifeCycleSavings$pop15 > 16)

# can use & and | for the condition

which(LifeCycleSavings$pop15 > 16 & LifeCycleSavings < 30)


rownames(LifeCycleSavings)[which.max(LifeCycleSavings$pop75)]
## France

rownames(LifeCycleSavings)[which.max(LifeCycleSavings$dpi)]
## US
rownames(LifeCycleSavings)[which.max(LifeCycleSavings$ddpi)]
## Libya

max(LifeCycleSavings$pop15)
#47.64

ggplot(LifeCycleSavings, aes(pop75)) + geom_histogram()

ggplot(LifeCycleSavings, aes(pop15, pop75)) + geom_point()

#Exclude the three countries from the data set which have the highest ddpi.
# can use the order function, sorted them and exclusive 
# sort data set based on ddpi and then exclude the top three rows in the dataset

indexes = order(-LifeCycleSavings$ddpi) # sort in descending
# GIVES ROW INDEXES OF THE DATASET THAT ARE ORDERED OF DDPI
# sorted data
sortedData= LifeCycleSavings[indexes,]
# exclude the top three countries
excludedData = sortedData[-(1:3),] # exclude using minus

# bad solution

indexHighDDPI=which.max(LifeCycleSavings$ddpi)
##~ means to take the complement
myData <- LifeCycleSavings[-c(indexHighDDPI), ]
indexHighDDPI=which.max(myData$ddpi)
myData <- LifeCycleSavings[-c(indexHighDDPI), ]
indexHighDDPI=which.max(myData$ddpi)
myData <- LifeCycleSavings[-c(indexHighDDPI), ]
