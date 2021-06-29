

# highlight to run
# using ggplot to visualize data

## import packages
library(ggplot2)

## use built-in data set for visualization purposes
## doesn't have missing values

## built in dataset
mtcars = mtcars

## its a data frame

# select a column
mtcars$mpg

## order of importance in data science
## histogram: want to see the distribution of this column: how are these numbers distributed
## is it a normal distribution:

# plot a histogram to explore the distribution of mpg (first column in dataset)

## empty plot
## dataset name, name of columns - use plus to add components and attributes to the plot
## bins is the "histogram bins" along the x axis- divides the ranges of mpg into 10 different ranges
## counts how many mpgs fall into those ranges
# find the peak in the plot, ranges that mpg exist


ggplot(mtcars,  aes(mpg)) + geom_histogram(bins = 10, color ="red", fill="green") +
theme_bw() + ggtitle("my first histogram") + ylim(0,100) + xlab("X AXIS LABEL");

# ylim and x lim to ignore outliers


## use pluses to add attributes to the plot

## theme_bw removes grey background



## add to this


