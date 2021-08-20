# Predictive Modeling, Regression Analysis

- need to clean the data set first - bulting in functions - dplyr that has bulitn functions to measure some of the statiscal metrics in each of the groups
- Rdplyr
- measure the sd of different groups in R
- aggregate is a function - can get averate or sd to different groups
- to compute this function for different groups

- most common regression models
- best fitting line
- using the package **caret**


**Regression vs Classification**
- regression is continous
- classification is discrete

<img width="446" alt="image" src="https://user-images.githubusercontent.com/48233453/130181773-318d71bf-e3ff-4752-9448-b39ecf946aa7.png">
- want to predict mpg using another variable
% ggplot(mtcars, aes(wt,mpg)) + geom_point(size=7) + theme_bw()
- fit a linear line, linear line will help to predict mpg from the other vairable
- **assumes a relation between wt and mpg is linear**
<img width="425" alt="image" src="https://user-images.githubusercontent.com/48233453/130181940-fcb79c8f-c1c4-4b9b-bb65-19bea007c44b.png">
<img width="440" alt="image" src="https://user-images.githubusercontent.com/48233453/130181968-2d3ac1dd-56d4-4373-8509-28bc5a0e08ff.png">

<img width="437" alt="image" src="https://user-images.githubusercontent.com/48233453/130182001-5ea25c6a-25ec-49b1-94f0-7f56fc974d61.png">


# Build a model in R
- use caret package
- powerful package for predictive modeling
- builtin fucntions will automate a bunch of stuff
- in python is skitlearn

**Train and test a linear regression model in R**
**Predict mpgs in the mtcas dataset**
% install.packages("caret")
% library(caret)
% chucnk of data we need, all rows, just those columns
% data = mtcars[ , c("wt", "mpg"))

Four steps:
1) Prepaing the dataset that we need to use. Down-select the columns that you need, the target variable and the feature set that you need

% training = mtcars[, c("mpg", "wt")]

2)clean up the dataset -remove the outliers

3) split dataset into training and test dataset
- 70 30 split, shuffle first, can use a builtin function called sample that will automatically generate some random indexes for you, use the seq(1, nrow(mtcars,2)) will give the odd indexes of the rows for the training - if want 50 50 set

% training = mtcars[(seq(1 , nrow(mtcars), 2), c("mpg,"wt")]
- start from 1 and skip by 2 
% test = mtcars[(seq(2 , nrow(mtcars), 2), c("mpg,"wt")]
- there will not be any overlap


4) train the model
train is a builtin function, that takes in the column name for the target variable, ~., then the dataset for training, then its the method and the model = "", available models: svm random forests, linear regression, lots of them

% model = train(mp~., training, method = "lm")

- to see the final cofficients of the final model
% model$finalModel


5) Test models : make predictions - need a test dataset that is not overlap from the training set, training and testing same would make it overfitting, will see good performance but if use real test set, you trainng and tested on the same 

% predictedMPGs = predict(model, testing)
% as.numeric(predictedMPGs)
% real = testing$mpg

6) Get performance/accuracy of the model

- measure metrics to figure out which model is better, can say r2 > 0.8
- To measure for linear regression:
- **RMSE** =  sqrt(mean(predictedMPGs - real)2))
% RMSE(predictedMPGsting$mpg) 
- compare the actual value to the predicted
- not a good metric becuase RMSE can be anywhere from 0 to infinite, can be use for comparisons for different models, if lower then better fitting model

- **R-SQUARE (R1)**
% R2(predictedMPGS, test$mpg)
- will give you a number 0 and 1
- the value gives acuraccy
- no acceptable value, its just a range of numbers, can be used to compare models

 - **mean of absolute errors** MSE
- mean(abs(predictedMPGs - test$mpg))
- MAE(predictedMPG, test$mpg)

- this is a deterministic model - so should see the same result each time
# Multlinear Regression

% training = mtcars[(seq(1 , nrow(mtcars), 2), c("mpg,"wt", "qsec")]
- start from 1 and skip by 2 
% test = mtcars[(seq(2 , nrow(mtcars), 2), c("mpg,"wt", "qsec")]

- use multiple features to predict one column - a 3d shape that will be trained to fit the datapoints
- can use different modles using the method in the train function
- decision tree - random forest are a population of those subtrees
- random forest has the best performance so far
- feature select will impact the accuracy of the model
# Predictive Accracy

# Predictive Modeling Flow

# Feature Selection
 
# Lab works

