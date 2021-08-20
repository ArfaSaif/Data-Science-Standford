# Predictive Modeling, Classification Models
- shazam uses nearest neighbour algorithm
- audio to time series data to distance meterics to find closest song - distance metrics include DTW(Dynamic Time Warping) and Euclidean
- compare and find closest match
- can be use to detect mosquitos to classify different types of mosquitoes

# KNearest or Neighbour Classification
- iris dataset
- one categorical variable
- draw a line graph to cluster different types of species

% ggplot(iris, aes(sepal.length, petal.length, color = species)) + geom_point()

<img width="494" alt="image" src="https://user-images.githubusercontent.com/48233453/130242323-a48cc564-9ae4-479f-a6bd-6ac1805860cd.png">



- use nearest neighbour for the new datapoints by finding the nearest neighbour and using its label
- <img width="449" alt="image" src="https://user-images.githubusercontent.com/48233453/130242427-5dacf2af-7aea-440b-8a39-df5d805e6822.png">
- outliers can skew results
- k nearest neighbour -> better based on majority voting in case of outliers skewing results


# Distance metrics for Classification
**Euclidean** - for continous variables: between two datapoints
**Hamming distance** - for text classification - two strings of equal length is the number of positions at which the corresponding symbols are different. Measure the minimum number of substituions required to change one string into another, or the minumum number of errors that could have transformed one string into the other. For nearest neighbour - find the hamming distance from new data set to all other datapoints in ttraining set, put in it into that class
**CK (Campana-Keogh)** - calculate the distance between images

**Manhattan Distance ** 
- used for routing algorithms because usually theres not a shortest distance between one points or another

<img width="491" alt="image" src="https://user-images.githubusercontent.com/48233453/130243560-4e0afded-2e9f-4612-9df1-05ba9978f163.png">

<img width="509" alt="image" src="https://user-images.githubusercontent.com/48233453/130243596-9ca7a279-f8a9-4071-bf2c-8640a1032899.png">
<img width="470" alt="image" src="https://user-images.githubusercontent.com/48233453/130243852-24329969-8add-4533-be84-69a90a16d208.png">

<img width="490" alt="image" src="https://user-images.githubusercontent.com/48233453/130243886-b79e2424-a73d-4604-9337-87b276d6017d.png">





