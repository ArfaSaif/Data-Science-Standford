# Load the "mpg" dataset in R. Then, address the following:
library(ggplot2)
mpg=mpg
#  Plot a two dimensional scatterplot for “cty” and “hwy”.
ggplot(mpg, aes(cty,hwy)) + geom_point()

# Apply kmeans to guess the classes of cars based on their “cty” and “hwy” mpg.
myCluster = kmeans(mpg[,c("hwy", "cty")], 7)
ggplot(mpg, aes(cty,hwy, color = as.factor(myCluster$cluster))) + geom_point()
# For this purpose pick k=7 which is the number of unique classes of cars (compact, SUV, etc) and apply kmeans on only “cty” and “hwy” columns.
# Create a scatter plot for “cty” and “hwy” and add distinct colors to the dots using their cluster numbers.
