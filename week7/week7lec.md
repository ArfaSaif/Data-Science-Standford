# Feature Selection and Comprehensive Analysis of Models

This week, we will talk about feature selection and its impact on predictive modeling. We will also see how to compare multiple models in R in order to pick the best model.  

# Objectives
Students will be able to:

Explain the greedy feature selection algorithm.
Apply feature selection methods in R.
Identify methods such as bootstrap, k-fold cross validation and repeated k-fold cross validation to compare models and pick the best one.

# Real World: Improving Accessibility

- wearable devices = wrist displacement for speach 
- phone can read those gestures
- accelerometers - collected time series data from the sensors - to train a classification model

# Feature Selection
Feature selection is an essential step in predictive modeling. In this video you will learn the details of greedy feature selection which is a simple and very common algorithm used in the field.

- optimal or suboptimal columns for selecting to predict the target variable
-** # Approach # 1: Brute force**
<img width="643" alt="image" src="https://user-images.githubusercontent.com/48233453/130309794-9f8c7981-65a6-45d2-af5a-cd5d9b3856d6.png">
- all subsets - then measuring the accuracy - then selecting the subset with the highest accuracy
- hard to train and test this


- **# Approach # 2:** Greedy Feature Selection
<img width="793" alt="image" src="https://user-images.githubusercontent.com/48233453/130309840-74652a2a-8fc5-438d-8c12-89cda8038884.png">
 - order that we pick the features matters and will impact accuracy - that is why it is sub-optimal
 - cant iterate through all the feature subsets so will do this


# Picking the Best Model
In order to make accurate predictions in regression or classification, you need to find the best model which fits your data. In this video you will learn accuracy metrics used for comparing models and eventually picking the best model.

- to fit the dataset
- 4 proppsed model - train and test many models and then select the best

<img width="704" alt="image" src="https://user-images.githubusercontent.com/48233453/130309882-0e7badda-ebbe-474d-a180-2bd0e6f1bbc3.png">

#  Data Split : 70 , 30 - issue is 
<img width="819" alt="image" src="https://user-images.githubusercontent.com/48233453/130309886-02f80b3b-3aa7-4297-a9fe-64c501cf7b64.png">
- the proportion matters and also the instances you pick for train/test also effects accuracy
- 

# Bootstrap
- take random samples from the training set to evaluate the model
- and train and test over multiple iteration, then find the mean or median of the accuracies
- not best omdels if small dataset, and also randomly generates difffernet traing and test sets, not sure if you tested your model for all possible test instances
<img width="817" alt="image" src="https://user-images.githubusercontent.com/48233453/130309991-7f46bfb9-c5b2-40c4-9ae6-19cbdf0f7afe.png">


# K-Fold Cross Validation
<img width="831" alt="image" src="https://user-images.githubusercontent.com/48233453/130310052-7f0bb81e-08ef-4651-a6f2-f6317dc0ec1c.png">

- equal segements
- go one times - k models 
- will have k accuracies, take the average of those accuracies
- 
<img width="810" alt="image" src="https://user-images.githubusercontent.com/48233453/130310066-ac3a3984-87fb-4d95-821f-9fc389fdd29c.png">


# Repeating K-Fold Cross Validation

<img width="825" alt="image" src="https://user-images.githubusercontent.com/48233453/130310084-398fe074-f3c4-44e9-80a6-e30ddda38eb5.png">

- so that the accuracies become independent from the randomness of the model


Many models are irreproducable because those model have some randomeness involved in them when training implementation such as random forest or neural networks. Reapted K-Fold Cross Validation will make the accuracy independent of the model randomness.

# storing data tools
hadoop and spark

# sampling
- 10% of samples - when i do the sampling the sample function, use replace parameter - when to use true or false, you can repeatedly use the same samples - when the sample size is not big enough, how do we choose between two - if large then just want to subsample but for smaller datasets we have to ue replacement equal to true --== upsampling since using the same datapoints alow time, replications in training and test - yes can cause overfitting, its safer to set it to false - default is false - better not to set it to true - chance of overfitting - downsides of using a smaller datasets

# Feature Selection with the Caret R package
- use machine learning mastery link to find the subset of features that are the most important for training the models, varImp(model)
- importance of each of the features depends on the model you want to train
- selected subset of features depends on the type of model 
- need to know the model type and the target 
- this is supervised feature selection
- unsuperivsed feature selection you dont need to know the model algorithm or the target variable - will tell you which features are good representations of the dataset independent of the model you want to train
- unsupervised isnt as good as superivsed since supervised you are looking at a select target variable
- classify sensors to a classification
- videos: frame by frame bounding box then render the frames together
- for every modality of data there are different methods, algorithms, distance metrics 
- convert from one modality to another - speech audio files to time series data using mfcc algorithms 
# Comprehensive Analysis of Models
- data splitting isnt the most efficient way for training and testing models because the accuracy depends on how you split the data, thats a major problem of data splitting
- we want to learn other metholodigies for analysing 


#1 Boot strap

#2 k-fold cross validation

#3 repeated k-fold cross validation


% comprehnsive analysis of mdoels
% compare mulitple models and pick the best one

% library(caret)
% spam = read.csv("spambase.csv", header= FALSE) % CONSIDERING THE FIRST AS NOT LABELS

catergorize the last column

% spam$ v58 = as.factor(spam$v58)

training and testing 50 iterations of the same model, boostraping 50 times, by using 50 different splits of training and test, measure the accuracy

%train_control <- trainControl(method="boot", number=50)

train the model, downselect a subsequence of the dataset

% spam = spam[seq(1, nrow(spam), 20,]
% model1 <- train(v58~., spam, trControl=train_control, method="rf")

its spliting the data into train and test, its measuring the accuracy and kappa score, doing this for 10 different splits, 10 values accuracy metrics

% model2 <- train(v58~., spam, trControl=train_control, method="rf")
% model3 <- train(v58~., spam, trControl=train_control, method="svmPoly")



first line : wrappoing all the models you trained into a resampled module, you need to label each of the model you have trained, label is the name that will show up on the plot
second line: create the plot for use
% allModels = resamples ( list (NearestNeighbour = m1, RandomForst = m2, SVM=m3))
% bwplot(allModels, scales = list(relation = "free"))


<img width="651" alt="image" src="https://user-images.githubusercontent.com/48233453/130311913-7caef8f6-a2a1-4c54-8a1c-db2176334aa2.png">


boxplot - since doing 10 iterations and will show the median of those algorithms

can use k fold crossvalidation, and repeated

% train_control <- trainControl(method="reapeatedcv", number=10, repeat=5)

50 models

# Model Complexity
dont want too complex , too many features or too less features, depends on the dataset
<img width="249" alt="image" src="https://user-images.githubusercontent.com/48233453/130312694-92d0ead2-f76d-4697-a919-4c465424fa4c.png">

# Readings
Feature Selection with the Caret R Package by Jason Brownlee (Machine Learning Mastery, September 22, 2014) (Links to an external site.)

This reading explains useful functions and packages used for feature selection in R.
