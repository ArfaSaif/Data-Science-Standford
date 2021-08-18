# One Variable - Density Plot
<img width="315" alt="image" src="https://user-images.githubusercontent.com/48233453/129831104-471835ef-06f3-4ee0-aae9-5f20a903663d.png">

ggplot(mpg, aes(hwy)) + gemo_density(color="red", fill="blue")
- a smooth distribution of the histogram, instead of bins, shows a smooth version
# One Variable - Bar Graph
<img width="313" alt="image" src="https://user-images.githubusercontent.com/48233453/129831177-9b0bc87c-631d-4bfa-86b5-f1acc1ad8221.png">

ggplot(mpg, aes(manufactuter)) + geom_bar(fill="violet")
- put a categorical variable in the x axis so that it counts the number of manufacturers in the dataset, number of rows that have this manufacturer - used to count the number of datapoints in a dataset according to some variable
- aes column must be categorical, to have them seperated from each other


 # Two Variables - Scatter Plot
 <img width="313" alt="image" src="https://user-images.githubusercontent.com/48233453/129831450-9f71b7dc-2f3a-40c8-8330-22b2a51f9edb.png">
- CORRELATION
 ggplot(mpg, aes(cty,hwy)) + geom_point(color="green", size=7)
 - can add a third variable by putting a color in aes and another variable to visualize it, because using 3 dimensional variables in not proffessional, usually we just use 2D
- data can overlap if the size is too big - can make size smaller, if dataset has many datapoints in it, if make it small, datapoints will still overlap, one solution is to make the datapoints transparent, by changing a variable callued alpha, put something close to zero so that it is transparent
<img width="338" alt="image" src="https://user-images.githubusercontent.com/48233453/129831757-88555451-70e4-4213-931f-b9b6510e6458.png">

library(ggplot)
ggplot(mpg, aes(cty,hwy)) + geom_point(color="green", size=7, alpha = 0.1)

# Comparing Distributions
- How to compare the distributions of hwy mpgs for different classes of cars? - we had different classes of cars (suv, compact, truck), want to see the distributions how mpgs look like and compare them in one single plot - how mpgs for trucks look like and compare them to suvs, do this for all the classes
- can visualize a distribution using historgram, but we need to compare distributions

CODE:
- library(ggplot2)
- 
- mpg = mpg # hwy mpg is a column called hwy, the class of the car is in the class column
- newMPG = rbind(mpg, mpg, mpg, mpg, mpg, mpg)
- newMPG$hwy = newMPG$hwy + runif(nrow(newMPGS), in = 0, max = 1)





