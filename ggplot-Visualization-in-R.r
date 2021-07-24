# ggplot and Visualization in R

Advanced Plots
library(ggplot2)

### new data frame in the environment tab
mtcars = mtcars



### historgram for the frequency of each varaible, binwidth is
### how many of these variables do you have,


###  distribution of the variables

### name of dataframe, aes for the varaible we want to plot

### initiating a plot
### ggplot(mtcars,aes(mpg))

### which type of plot using interface of ggplot

ggplot(mtcars, aes(mpg)) + geom_histogram(binwidth = 5, color='red', fill='green') + ggtitle("Distribution of MPG") + 
  ylab("Numbers") + xlab("Miles per Gallon") + xlim(0,50)


### density plot
ggplot(mtcars, aes(mpg)) + geom_density(binwidth = 5, color='red', fill='green') + ggtitle("Distribution of MPG") + 
  ylab("Numbers") + xlab("Miles per Gallon") + xlim(0,50)

### bar graph

ggplot(mtcars, aes(hp)) + geom_bar(color="red", fill="blue") + ggtitle("Distribution of MPG") + 
  ylab("Numbers") + xlab("Miles per Gallon") 


### scatter plot - for visualizing correlations - wt and qsec in
### points in 2d plot
### use double quotations for the string otherwise R compiler thinks its a variable
ggplot(mtcars, aes(x=wt, y=qsec)) + geom_point(size=5,color="blue", fill="blue") + ggtitle("Correlation of wt and qsec") + 
  ylab("Numbers") + xlab("Miles per Gallon") 

### negative correlation
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point(size=5,color="blue", fill="blue") + ggtitle("Correlation of wt and qsec") + 
  ylab("Numbers") + xlab("Miles per Gallon") 

### scatter plots - 2 variables but theres a way to include another variable, done using another color for the data points
### use a new attribute called color for the third variable

### use as.character to make 3 discrete categories - different color of points based on cyl
### if not use as.character, will give it a range of colors instead of discrete colors, described as continous
### cyl now strings so discrete values
ggplot(mtcars, aes(x=wt, y=mpg, color=as.character(cyl))) + geom_point(size=5) + ggtitle("Correlation of wt and qsec vs cyl") + 
  ylab("Numbers") + xlab("Miles per Gallon") 
### define binwidth = 5


### box plots - comparing distribution of different variables
### for example, for different cyl, what is the range of their mpgs, group mpgs based on their cyl numbers
### for every group, i want to see the range or median of theier mpgs
### on x axis = have discrete variables for cyl
### on y axis - idfferent distribution of mpgs, find the range of mpgs for each cyl
ggplot(mtcars, aes(x=as.character(cyl), y = mpg, fill=as.character(cyl))) + geom_boxplot()
### since x is continous, its not considered as a group, need to make it discrete categories of cyl variables, change it to character 
### the line on the plot shows the median of the mpgs. upper quartile means 
### range of the mpgs, the mdeian is the lines, the upper and llwe wuartiel, only 25% is greater thatn 30.5 only 25% have lower than the lower line
### the dots are the outliers, compared to other cars with those cyclinders


## jitter plots - to compare distributions - gives you distributions in every class

### simimlar to box plot except it doesn't have statistics information like median
ggplot(mtcars, aes(cyl, mpg, color = cyl)) + geom_jitter()

## violin plot - shows the exact distribution of the variables
### see the distribution of pgs for each type of cyclinder
ggplot(mtcars, aes(x=as.character(cyl), y = mpg, fill=as.character(cyl))) + geom_violin()


# heat map

x = c(1,1,1,2,2,2,3,3,3)
y = c(1,2,3,1,2,3,1,2,3)
z = c(1,4,4,2,3,6,6,1,8)

myData = data.frame(X=x, Y=y,Z=z)
ggplot(myData, aes(X,Y,fill=Z)) + geom_tile()

# interactive plots
## using a library called ploty








