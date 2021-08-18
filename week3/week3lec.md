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
% library(ggplot2)
- 
% mpg = mpg # hwy mpg is a column called hwy, the class of the car is in the class column
- want to increase the dataset so that there are more datapoints
- # will create a larger dataset that is called newMPG and in this dataset we are binding and replicating the mpg dataset multiple times to make a larger dataset for visualizing purposes- 200 rows become 1000 rows
% newMPG = rbind(mpg, mpg, mpg, mpg, mpg, mpg)

- runif is a random function that generates fandom numbers using it to generate some randomness to the hwy column so we dont have the same datapoints replicating, just adding some randomness to that compute
% newMPG$hwy = newMPG$hwy + runif(nrow(newMPGS), in = 0, max = 1)

- can use a scatter plot
- class on the x-asis and hwy on the y axis
% ggplot(newMPG, aes(class, hwy, color=class)) + geom_point()+theme_bw()

- not ideal plot
- can use to find max or min
- <img width="410" alt="image" src="https://user-images.githubusercontent.com/48233453/129914195-1dcbfd05-74b9-4ded-948a-b948bf05e6b5.png">
- we have overlapping datapoints
- theres datapoints ontop of each other, cannot see thier distribution, cannot see how many are there, there could be a bell curve so we cannot tell 

- use gitter plot
- on the x axis adds some random noise on the x values, instead of plotting all the points on the y axis, it adds some random noise on the x-axis, expands the x-axis instead of putting them all on one line
- it will be spread out, you can see how many datapoints falling in each y value

% ggplot(newMPG, aes(class, hwy, color=class)) + geom_jitter()+theme_bw()
<img width="475" alt="image" src="https://user-images.githubusercontent.com/48233453/129914676-6b9db48c-62a0-4f58-b746-964492caa497.png">


- use violin plot
- shwos shape of the distribution for each of the classes of the cars
- <img width="464" alt="image" src="https://user-images.githubusercontent.com/48233453/129914975-7552bc9d-b4d9-4f52-aa8f-5c290eb2b3c7.png">
- its a flipped histogram that is mirrorred

- highest average of mpgs
- want to estimate the average of the mpgs for each of the classes
- all these plots were missing the statistical information here
- use box plot, can cpmpare the medians and widest distribution, size of the box shows the desnity of the distribution, 
% ggplot(newMPG, aes(class, hwy, color=class)) + geom_jitter()+theme_bw()
<img width="424" alt="image" src="https://user-images.githubusercontent.com/48233453/129922644-06dbd85d-e677-474c-9853-4ae35e658480.png">

## Color Labels
ggplot(mpg,aes(fl,fill=class)) + geom_bar()
- fill in the bar graph with the class color
- <img width="379" alt="image" src="https://user-images.githubusercontent.com/48233453/129923081-29cfb9fc-e945-419b-bd43-a80ef318d348.png">

# Heat map
<img width="368" alt="image" src="https://user-images.githubusercontent.com/48233453/129923135-83d61ee8-3151-41cb-bf54-ac0ecc772c20.png">
- where is the maximum and minium for that z value


# Summary
<img width="367" alt="image" src="https://user-images.githubusercontent.com/48233453/129924857-c856beb8-2e05-4a12-8ed3-2325d12c5324.png">

# Interactive plots
- use plotly library
- <img width="297" alt="image" src="https://user-images.githubusercontent.com/48233453/129925127-67640277-2146-4be9-97d8-62f41200eae8.png">


