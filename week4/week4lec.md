can use the shiny package to create interactive web application
can connect to databases to run query - run analysis directly from R ontop of the databases, sql, mysql -> Rsql

#Final Project
kaggle - for machine learning datasets, competitions, outsource their projects

mimic - 

google dataset search - www.toolbox.google.com/datasetsearch

# Import data into R
www.datacamp.com/community/tutorials/r-data-import-tutorial

% to read a CSV or Excel file

% go to files, current directory, change directory to the downloaded 
CODE:
% import csv file into R
% More->set as working directory setwd("~/Donwloads")
% read.csv("name") # or the full path

% make dataframe
% skip the first 3 rows, header=FALSE - first row considered to be raw data, otherwise its considered as a header
% realEstate = read.csv("filepath.csv", skip=3,)

# Cleaning dataset
1) downsample on the columns that you need
2) remove outliers by removing those rows in the dataset using minus sign [-ind,] (means remove all the columns for all the rows highlighted in ind -> remove NAs (missing values, those are useless)
-- will cause errors
% bultin-in function complete.cases -- will give FALSE if those rows are not complete: can also use library(dplyr) to deal with missing rows and outliers
% ind = complete.cases(dataframe)
% cleanData = airquality[-ind,]
# Detect outliers - will skew your statistics
% can use visual or statistical approach
% explre the dataset and identify outliers using visualization
% library(ggplot2)
% **ggplot(realEstate, aes(sq__ft, price)) + geom_point() + thme_bw()**

% datapoints are outliers since swuare feet is zero
% to exclude those datapoints from the analyses, remove them using a function called which

% idenitfy the rows which have a sq__ft = 0 -> for querying
% **ind = which(realEstate$sq__ft == 0)**  % this gives the row numbers who have sq_ft of zero
% **cleanRealEstate= realEstate[-ind,]**
% visualize the cleaned dataset
% **ggplot(cleanReallEstate, aes(sq__ft, price)) + geom_point() + thme_bw()**

**which function is used to query**

# statistical way to remove outliers

% mean(sq__ft) +- 2 SD(sq_ft) ->> remove all points that fall outside this range
% mean(sq__ft) +- 3 SD(sq_ft) ->> remove all points that fall outside this range

% before removing rows, remove columns that you dont need and then remove the outliers because if you remove all the comuns you dont need, 

# find correlation between two variables using cor function
% **cor(cleanRealEstate$sq__ft, cleanRealEstate$price)**

# Correlation analysis

# Real World Applications: Time Series Analysis
- in iot being collected
- stock prices
- ecg
- sensors
- algorithms
-- motif discover: to discover most repeating patterns
-- Rule Disocvery: to make short term predicitons ahead of time
-- Anomaly Detection: tl find abnormality

# Predictive Modeling

# Lab Works



