


# About the dataset
# Life Expectancy dataset from (WHO)
#  there have been lot of studies undertaken in the past on factors affecting life 
# expectancy considering demographic variables, income composition and mortality rates.
# 20 predicting variables. All predicting variables was then divided into several broad categories:
# ​Immunization related factors, Mortality factors, Economical factors and Social factors.


# Goal: will be doing multiple linear regression to find factors affecting life expectancy
# while considering data from a period of 2000 to 2015 for all the countries.

# Applications of this study: Since the observations this dataset are based on different countries, 
# it will be easier for a country to determine the predicting factor which is contributing to lower 
# value of life expectancy. This will help in suggesting a country which area should be given importance 
# in order to efficiently improve the life expectancy of its population.



library(ggplot2)
library(caret)
library(mlbench)

# create data frame

# combine the data into one dataframe
df = read.csv("Life Expectancy Data.csv")
df <- df[complete.cases(df), ]
# remove the rows with missing data


# Q1: What are the predicting variables actually affecting the life expectancy?

meanAge = mean(df[["Life.expectancy"]])
meanAge
# 69 years


ggplot(df, aes(Schooling, Life.expectancy)) + geom_point(size = 2) +  ggtitle("Schooling vs Life Expectancy") +theme_bw()

# Analysis: positive linear correlation between the number of schooling the life expectancy

# Q2: Use density plot to visualize the average life expectancy distribution
ggplot(df, aes(Life.expectancy)) + geom_density(color="red", fill="blue") +theme_bw()

# Q3: visualize life expectancy ranges for different countries
temp = df[df$Country == "Canada" | df$Country == "Albania" | df$Country == "Algeria" | df$Country == "Australia" | df$Country == "Austria" | df$Country == "Azerbaijan" | df$Country == "Belgium" , ] 

ggplot(temp, aes(Country, Life.expectancy, color=Country)) + geom_boxplot() +theme_bw()

# Q4. Visualize adult morality for these countries
ggplot(temp, aes(Country, Adult.Mortality, color=Country)) + geom_violin() +theme_bw()

# Q5. Life Expectancy vs income.composition.of.resources
ggplot(df, aes(Income.composition.of.resources, Life.expectancy)) + geom_point(size = 2) +  ggtitle("Schooling vs Life Expectancy") +theme_bw()

# Remove outliers that have income.composition.of.resources = 0

ind=which(df$Income.composition.of.resources==0.000)
ind
cleandf=df[-ind,]
ggplot(cleandf, aes(Income.composition.of.resources, Life.expectancy)) + geom_point(size = 2) +  ggtitle("Schooling vs Life Expectancy") +theme_bw()
cor(cleandf$Income.composition.of.resources, cleandf$Life.expectancy)
# strong positive correlation = 0.8604497
# positive linear correlation



# Does Life Expectancy have positive or negative relationship with drinking alcohol?
# alcohol
df <- df[complete.cases(df), ]
ggplot(df, aes(Alcohol, Life.expectancy)) + geom_point(size = 2) +  ggtitle("Alcohol vs Life Expectancy") +theme_bw()


# Do densely populated countries tend to have lower life expectancy?


meanPop = mean(df[["Population"]])
ind=which(df$Population<100000000)
ind
temp2=df[-ind,]
ggplot(temp2, aes(Life.expectancy)) + geom_density() +  ggtitle("Life Expectancy") +theme_bw()
meanAge = mean(temp2[["Life.expectancy"]])
# life expectancy is less of densely populated countries - 67 years

# What is the impact of Immunization coverage on life Expectancy?
ggplot(df, aes(Hepatitis.B, Life.expectancy)) + geom_point(size = 2) +  ggtitle("Schooling vs Life Expectancy") +theme_bw()





########


# Training the model - linear regression
ind=which(df$Income.composition.of.resources==0.000)
ind
cleandf=df[-ind,]

training = cleandf[seq(1 , nrow(cleandf), 2), c("Life.expectancy","Income.composition.of.resources", "Schooling" )]

test = cleandf[seq(2 , nrow(cleandf), 2), c("Life.expectancy","Income.composition.of.resources", "Schooling")]

model = train(Life.expectancy~., training, method ="lm")

model$finalModel

predictedLE = predict(model, test)
as.numeric(predictedLE)
real = test$Life.expectancy
MAE(predictedLE, test$Life.expectancy) 
R2(predictedLE, test$Life.expectancy) 
RMSE(predictedLE, test$Life.expectancy) 


# Training the model - random forests

training = cleandf[seq(1 , nrow(cleandf), 2), c("Life.expectancy","Income.composition.of.resources", "Schooling" )]

test = cleandf[seq(2 , nrow(cleandf), 2), c("Life.expectancy","Income.composition.of.resources", "Schooling")]

model = train(Life.expectancy~., training, method ="rf")

model$finalModel

predictedLE = predict(model, test)
as.numeric(predictedLE)
real = test$Life.expectancy
MAE(predictedLE, test$Life.expectancy) 
R2(predictedLE, test$Life.expectancy) 
RMSE(predictedLE, test$Life.expectancy) 

# Training the model - linear regression

training = cleandf[seq(1 , nrow(cleandf), 2), c("Life.expectancy","Income.composition.of.resources", "Schooling" )]

test = cleandf[seq(2 , nrow(cleandf), 2), c("Life.expectancy","Income.composition.of.resources", "Schooling")]

model = train(Life.expectancy~., training, method ="bridge")

model$finalModel

predictedLE = predict(model, test)
as.numeric(predictedLE)
real = test$Life.expectancy
MAE(predictedLE, test$Life.expectancy) 
R2(predictedLE, test$Life.expectancy) 
RMSE(predictedLE, test$Life.expectancy)

# Training the model - linear regression

training = cleandf[seq(1 , nrow(cleandf), 2), c("Life.expectancy","Income.composition.of.resources", "Schooling" )]

test = cleandf[seq(2 , nrow(cleandf), 2), c("Life.expectancy","Income.composition.of.resources", "Schooling")]

model = train(Life.expectancy~., training, method ="lasso")

model$finalModel

predictedLE = predict(model, test)
as.numeric(predictedLE)
real = test$Life.expectancy
MAE(predictedLE, test$Life.expectancy) 
R2(predictedLE, test$Life.expectancy) 
RMSE(predictedLE, test$Life.expectancy) 
