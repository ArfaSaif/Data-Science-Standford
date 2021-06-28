


## R Programming Tutorial for Data Science

Basic Data Analysis

- environment tab in R Studio for the values
- in editor # is the comments


print all the numbers from 1 to 20 
> 1:20 (including ends)

[27] 27th element of output

power = ^

Built-in function (no special library, their built in)
> square root = sqrt
> log10(100) (default base is e)




## Assignment

> z <- x + y



## Sequences
> seq(1,5, by=.5) - from 1.0 to 5.0 incrementing by 0.5 [default is 1 and will include the final number]



## Vectors
> v1 = c(6,5,4,3,2,1)

- c stands for concatenation
- indexes start at 1 :(
<img width="116" alt="image" src="https://user-images.githubusercontent.com/48233453/123689608-64b47300-d821-11eb-8904-325056f7c918.png">

> v1 + v2
- will do element wise addition


## Other Functions

> rep(1,5) = 1 1 1 1 1
- will repeat a number multiple times



## Built-in Functions for Vectors
> max(v3); min(v3)

max element; min element of vector
> length(v3)

number of elements in a vector

> mean(v3)

average of elements in v3

> sd(v3)

standard deviation of elements in v3

> var(v3)

variance of numbers in the vector



## Other Built-in Functions
> as.character(2) = "2"


> as.numeric("2") = 2

string converted to number - used to convert strings to numbers in spread sheets

> as.character(v3) = "16" "14" "12" "10" "8" "6"

> vector of strings vs = c( "mohammad", "bob", "juliana")

- can only have the same type of variables
- otherwise will store it as a string



## Data Elements
- select range of elements
> v3[1:3]


> if go beyond, some compilers will give errors otherwise will give NA

- exculde one element but select all elements
> vs[-3]


- will only overwrite if reassign

- slicing: including only part of the object
> v3[c(1,2,5)]


- include some of the elements, want to only select element 1,2 and 5 from v3
- can put a minus sign infront of those elements to exclude those elements


- select elements based on logical operator
> vs[v3>3]


- select all elements that meet this condition
- all elements greater than 3
- if just write v3> 10, will give a boolean of all the comparisons



## Data Frames for Storing Data sets

A data frame is used for storing data tables. It is a list of vectors of *equal* length.
Seperate section in the RHS of R Studio. with 3 obj means the number of rows and 3 variables means number of columns.


% define 3 vectors
a=c("David", "Eamonn", "Jen")
b = c(100,98,99)
d = c(5,6,7)

% integrate the vectors into the data frame
% the columns are names, grades, and heights



> students = data.frame(names = a, grades = b, heights = d)

* Access values in columns values *
> students$heights



## Built - in Data Frames for Training Purposes

We use built-in data frames in R as training examples.
For instance, here is a built-in data frame in R called mtcars (in datasets package, checkmark to load the database).

% to load library use library(datasets)

> mtcars


- 32 objs(rows or instances) and 11 variables( number of columns)


## Access Data from the Data Frame

Two ways

1) Use row and column m[rownum, colnum] where m is the dataframe. Rows and columns start at 1.
2) Use row name and column name m["Range Rover", "gears"] using strings


## Data Frame Functions

For dynamic programming:

> nrow(mtcars)

Number of rows in the data frame

> ncol(mtcars)

Number of cols in the data frame


> colnames(m)

Get the column names strings
% can access using colnames(m)[3]

> colnames(m)[3] = "newname"

To change the col names of the data frame

> colnames(m)[1:3] = c("what1", "what2", "what3")

To change the column names of the first 3 columns
















