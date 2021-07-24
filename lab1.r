USArrests = USArrests

#Which state has highest murder rate
# data frame $ column
# all of the rows and column 1

max(USArrests$Murder)
mean(USArrests[,1])
# which row
ind = which.max(USArrests$Murder)
# analyses using which rows hat have column greater than 30
indexes = which(USArrests$Murder>6)
rownames(USArrests)[indexes]

which(USArrests$Murder==max(USArrests$Murder))


#getrow name for this index
rownames(USArrests) # all rownames of dataset
rownames(USArrests)[ind]

## What is the average rate of Murder, Rape in the whole US
ggplot(USArrests, aes(Murder)) + geom_boxplot()
## 7.5

## What is the average rate of Murder, Rape in the whole US
ggplot(USArrests, aes(Murder,Rape)) + geom_point(size=5)
## 20


##################. NEW DATASET
library(plotly)
library(ggplot2)
LifeCycleSavings = LifeCycleSavings

rownames(LifeCycleSavings)[which.max(LifeCycleSavings$pop15)]
## Costa Rica

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
indexHighDDPI=which.max(LifeCycleSavings$ddpi)
##~ means to take the complement
myData <- LifeCycleSavings[-c(indexHighDDPI), ]
indexHighDDPI=which.max(myData$ddpi)
myData <- LifeCycleSavings[-c(indexHighDDPI), ]
indexHighDDPI=which.max(myData$ddpi)
myData <- LifeCycleSavings[-c(indexHighDDPI), ]
