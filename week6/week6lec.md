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



# Feature Selection

- selecting the optimal subset of features inorder to train a model
- the topic of selecting a subset of these columns in feature selection
- <img width="380" alt="image" src="https://user-images.githubusercontent.com/48233453/130267842-4a326525-02c9-46b3-91a8-23ef3af4177a.png">

- brute force solution is not practical
- <img width="378" alt="image" src="https://user-images.githubusercontent.com/48233453/130267884-0611b870-849c-4391-bdf1-846c94845aa9.png">

<img width="396" alt="image" src="https://user-images.githubusercontent.com/48233453/130267913-a95b0959-584e-470a-9672-21b8ee029d4b.png">

# Feature Selection in R
- carret package removes redundant features based on corellation
- rank features by imporatance using a function 

% importance <-varImp(model, scale = FALSE)

- to understand the importance score for each of the variables
- negative ones remove will improve model 
- good for random forrests - most contributing features
- rfe is also another function


- help improve the accuracy of the model
- columns that are relevant for a column that you are predicting
- some columns might also reduce the accuracy
- to reduce the dimensionality of the dataset, pca, subselect the data columns

size of the computers ram - can never load a dataset larger than that - cant use full capacity - big data tools  - cloud computing - azure or aws platforms for doing big data cloud computing - edge computing devices - azure box edge - need more powerful hardware to deal with such datasets - database technologies: mapreduce, spark and hadoop to query very large datasets

data science virutal machine on gpus, gpu computing is popular way of trning images

- train on gpu
- 10 to 100 
- tpu used for google hard computational 
- not every model is compatablie, some algorithms arent compatible
- cloud serverice - google colab - computational power



# Classification
# train and test a classification model using iris data set

% library(caret)
% iris = iris
%% categorical variable and other are numeric
% use numeric to predict the speicies of the categorical variable
% split dataset to train and test, use all the features
% train = iris[seq(1,numrow(iris),2),]
% test = iris[seq(2,numrow(iris),2),]

% training the classification model

% model = train (Species ~., training, method = "kknn")
% test the model
% predictedSpecies = predict(model, testing)
% measure accuracy of predictions
% RMSE and R2 not in categorical
% accuracy of the model, checking how many are equal to the real

% accuracy = predictedSPecies == testing$Species
-> gives back TRUE or FALSE so count the number of trues
-> sum it / nrows

% accuracy = sum(predictedSPecies == testing$Species) / nrow(testing)

% the accuracy of this model is 96%
% precision
% recall
% f1-score
% kappa

# imbalanced classification - hard to get balanced datasets
% just given the accuracy can you say if the model is doing a good job or not, or a meaningful classification or not

% no because the data could be imbalanced - 
% dogs: 90 and cats: 10 images for dogs and cats acuraccy will be 90%

% my model is going to predict dogs, the reason you got good accuracy was because imbalanced dataset == i

# solutions
% downsample the larger class
% upsamle the smaller class
% synthesize instances and add thme to the smaller class
% use cluster like k-means to upsample the smaller class
# use other accuracy metrics: f1-score and kappa - indepnedent from the imbalance problem - kappa is high is good regardless of imbalance

% fraud detection in banking transactions - 
% 

# distance measures in Time Series Data
- DTW ( Dynamic Time Warping)
- Euclidean




