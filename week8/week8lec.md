# Clustering and Association Rule Mining

# Kmeans Clustering Theory

Kmeans is the most common clustering method. 

# Clustering
- grouping objects that are similar:: "the process of organizing objects into groups whose members are similar in some way"

- labled if instances have label
- - unlabeled is to group the datapoints

<img width="423" alt="image" src="https://user-images.githubusercontent.com/48233453/130353531-8c499e4e-e87d-421e-b51d-f88a5fc464db.png">


# K-means
- value is the number of clusters
- randomly assign three datapoints on the plot
- <img width="362" alt="image" src="https://user-images.githubusercontent.com/48233453/130353548-1560d55d-b0f3-4713-a3e2-88a63cd06b13.png">
- datapoints is called the centroid: the point in the datapoints that has the lowest some of distances to all other points in the dataset
- therefore the centroid is the average of the dataset
- <img width="373" alt="image" src="https://user-images.githubusercontent.com/48233453/130353599-6451b238-e2d2-4209-b232-ea04fdefdeea.png">
- dots that are closer to k1 are X1, 
- label the datapoints
- then update the centroid by taking average of the datapoints labeled with that label
- the centroids move to a new location
- then repeat and calculate labels and then repeat calculation of centroids
- stop when no datapoint changes
- Kmeans in R - will automatically find the best value of K
- <img width="327" alt="image" src="https://user-images.githubusercontent.com/48233453/130353646-0f532f46-4ed4-490b-9d3f-018d98245a7c.png">


# FINDING K
- expert knowledge
- Sum of Squared Error(SSE)
- For each datapoint, the error is the distance to the nearest cluster
- To get SSE, we square thse errors and sum them
- <img width="415" alt="image" src="https://user-images.githubusercontent.com/48233453/130353692-ec1a950a-dd20-4aeb-a457-feef4a60e9d6.png">
- find k that minmizes SSE - k == n would mean that each point is a center
- we want to find the lowest k as well as the lowest SSE
- <img width="418" alt="image" src="https://user-images.githubusercontent.com/48233453/130353723-0949c90e-6dcc-49c0-b259-4276cc4cec61.png">

- find k that minmizes SEE - k == n would mean that each point is a center
- use the elbow of the plot for the value of K
- <img width="362" alt="image" src="https://user-images.githubusercontent.com/48233453/130353548-1560d55d-b0f3-4713-a3e2-88a63cd06b13.png">



# Association Rule Learning/ Real World: Mining Health Insurance Data
- Association rule mining is one of the most influential algorithms in retail analytics. 
- Most recommender systems are based on this algorithm. 
- you will learn necessary concepts in order to run this algorithm on data sets. 
- You will also see how it can be applied to a very large data set of health insurance data and potentially save thousand of lives. 

- future of retail is grab and go technology
- amazon go - every customer goes into the store takes and leaves
- deep machine learning - automatically detecting the thins you took
<img width="688" alt="image" src="https://user-images.githubusercontent.com/48233453/130354184-b62a2d99-5fef-4566-98f1-5ff489c61bbb.png">

- if you pick and put it back, automatically remove it from your cart
- <img width="703" alt="image" src="https://user-images.githubusercontent.com/48233453/130354205-7400880e-a73a-4150-881f-12a1bbcd891a.png">

- use machine learning , things you will like and keep and pay for what you like and return
- update models and make more accurate results next time


<img width="713" alt="image" src="https://user-images.githubusercontent.com/48233453/130354252-8c874ba6-c6ee-46ab-8a79-7f3fdf98b7d7.png">

- identifiying products taht go well together
- recommender systems based on market basked analysis - movies based on taste, based on user taste history
- "Customers who bough this item also bought" this
- Recommender systems are based on an algorithm called "Association Rule Learning"
- <img width="757" alt="image" src="https://user-images.githubusercontent.com/48233453/130354313-596e6577-e3d6-4d68-9ed7-b68af93db1cc.png">

- some rules are obvious, but there are rules can be extracted from customer purchase history


# Association Rule Learning Terminology
<img width="776" alt="image" src="https://user-images.githubusercontent.com/48233453/130354340-f8d8419d-9c89-4244-b98d-361ab8dc3b2e.png">
<img width="770" alt="image" src="https://user-images.githubusercontent.com/48233453/130354370-1ba635a8-8fd7-4326-a7d9-623be88de9e6.png">



- you will learn necessary concepts in order to run this algorithm on data sets. 
- Items: all products
- Transactions: the items purchased together
- Rules: if a customer purcheas a LHS item will most likely purchase RHS
- Metrics: sort rules based on improtances : 1) support 2) confidence

- confidence - score of how likely this 
- support - frequency of the rules

- most common algorithm is called Apriori (fastest and most common)


<img width="777" alt="image" src="https://user-images.githubusercontent.com/48233453/130354425-e11f8144-2c6b-4135-a000-a028fe56f32a.png">


- output and rules look like:
- <img width="774" alt="image" src="https://user-images.githubusercontent.com/48233453/130354450-cdd6561c-dd39-41db-a323-20b57e051362.png">

Titanic dataset
- first rule: 100% of child in second class survived

- in retail it has helped

# Reading
RDataMining.com: R and Data Mining (Links to an external site.)
https://www.rdatamining.com/examples/association-rules
Here is a nice tutorial on applying Apriori on the Titanic data set in R.

# Association between drugs
<img width="758" alt="image" src="https://user-images.githubusercontent.com/48233453/130354527-a22e9933-2273-487b-a499-98b95e5cda43.png">
0 pharmacies to prevent human medical errors


- need to update the spam feature set , the traininset we use to train the model


**Recursive Feature Elimination (RFE package) - Feature Selection **- using backward elimination by starting out by all the features and eliminating one feature at a time
- also pca 
- also unsupervised feature selection (UfsCov algorithm)
- for accuracy and time
- getting rid of irrelevant features in dataset
- complexity of model (algorithm complexity) relates to the time (can be exponential)

- in the Rank Features byImportance varImp - set importance = TRUE
- model isnt returning the importance score
- 

# Clustering
- unsupervised learning
- K means : nearest neighbour - default distance metric: euclidean distance - depends on the domain - 
- implement k means clustring
- number of clusters : value of k frind domain knowledge, expert, or algorithms
- labeled dataset
- **if unlabeled dataset: need clustering**

% iris = iris
% using k = 3
% using 1:4 columns
% myCluster = kmeans(iris[,1:4],3)

% use only comlumn 1 and 3
% myCluster = kmeans(iris[,1,3],3)

% cluster labels
% myCluster$cluster

% belong to the same class have the same cluster, belong to the same species probably
% use this colors and plot them
% library(ggplot)
% assign Colour
% ggplot(iris, aes(Sepal.Length, Petal.Length, color = as.factor(myCluster$cluster))) + geom_point(size=4) + theme_bw()

% remove outliers 
% clustering changes with each run, since using randomness to select over time
% set.seed(120) to see the same results

% best value for k, statistical method also
<img width="478" alt="image" src="https://user-images.githubusercontent.com/48233453/130365494-e2ad1c2d-2805-4b46-b901-4d190bad3b5e.png">

- using sum of square errors
- - error metric, the lower the best, but want the number of clusters want it to be low
- use the elbow datapoints
- overcome random using k-fold crossvalidation, look at accuracy then the mean or median of them
% clustering changes with each run, since using randomness to select over time

# Other Clustering
- self - organizing maps, gmm, heirarchial 
- use SSE to find the best method and best value of K to use
- look at the mean of the SSEs and compare, 
- bootstraping - split the training set into multiple sets and train the model on that








# Association Rule Mining
- recommendation systems, retail analysis

% 

# Web Scraping in R

# Lab


