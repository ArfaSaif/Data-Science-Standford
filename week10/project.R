library(ggplot2)
library(caret)
library(mlbench)

# create data frame

# combine the data into one dataframe
df = read.csv("Life Expectancy Data.csv")
# remove the rows with missing data


# Q1: What are the predicting variables actually affecting the life expectancy?
df <- df[complete.cases(df), ]
meanAge = mean(df[["Life.expectancy"]])
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
temp=df[-ind,]
ggplot(temp, aes(Income.composition.of.resources, Life.expectancy)) + geom_point(size = 2) +  ggtitle("Schooling vs Life Expectancy") +theme_bw()
# positive linear correlation



# Does Life Expectancy have positive or negative relationship with drinking alcohol?
# alcohol
df <- df[complete.cases(df), ]
ggplot(df, aes(Alcohol, Life.expectancy)) + geom_point(size = 2) +  ggtitle("Schooling vs Life Expectancy") +theme_bw()

# Do densely populated countries tend to have lower life expectancy?


df <- df[complete.cases(df), ]
meanPop = mean(df[["Population"]])
ind=which(df$Population<100000000)
ind
temp2=df[-ind,]
ggplot(temp2, aes(Life.expectancy)) + geom_density() +  ggtitle("Life Expectancy") +theme_bw()
meanAge = mean(temp2[["Life.expectancy"]])
# life expectancy is less of densely populated countries - 67 years

# What is the impact of Immunization coverage on life Expectancy?
ggplot(df, aes(Hepatitis.B, Life.expectancy)) + geom_point(size = 2) +  ggtitle("Schooling vs Life Expectancy") +theme_bw()

