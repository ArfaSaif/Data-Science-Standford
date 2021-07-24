 Training and testing regression models in R.
 
 Train models in R using the Caret package.
 
 # Real World: Applications of Predictive Modeling
 ![image](https://user-images.githubusercontent.com/48233453/126876651-cf5ec981-bb6c-4180-a276-cca48bd55d8e.png)

 Predictive modeling is one of the most important topics in machine learning simply because it has applications everywhere. See how predictive modeling can change the world by saving lives.
 
 - USING RECOMENDATION SYSTEMS TO CUSTOMIZE RECOMENDATIONS TO CUSTOMERS
![image](https://user-images.githubusercontent.com/48233453/126876673-37c6f463-a339-448a-a745-158f536acb8d.png)




# Single and Multiple Linear Regression
Linear regression is a simple and very common model to predict numerical values. In this video you will understand the algorithm and math behind this model.
![image](https://user-images.githubusercontent.com/48233453/126876698-57d6fd3f-e2d2-494f-b5b0-c9da7a7946b7.png)
![image](https://user-images.githubusercontent.com/48233453/126876710-481e792f-8e36-4d9b-9488-61d512af94fe.png)

![image](https://user-images.githubusercontent.com/48233453/126876725-2078b61b-7268-465e-af4b-54ec966fb528.png)

- finding line of best fit
![image](https://user-images.githubusercontent.com/48233453/126876741-b88e4040-cc4b-405b-9316-9a668b8ae6b5.png)

- non linear line provides problem

![image](https://user-images.githubusercontent.com/48233453/126876756-a5412ab9-bd7a-4bcd-9a18-05c1e5e9d08c.png)

- hat sign means that we we made an estimation
- x is the actual value of x
- y is an estimation
- y - yhat is the residual, or the error of the prediction
- RSS - sum of the squared residuals

![image](https://user-images.githubusercontent.com/48233453/126876798-5c67f807-8995-4b49-8715-c8a1412e1b86.png)



- the best fitting line, need to minimize RSS
- calculate the derivate of RSS based on x and y and set it to 1. Then find the estimates for beta1 , beta0
- 
![image](https://user-images.githubusercontent.com/48233453/126876853-2c60a3c6-22ea-4a7d-b922-232f807c26a6.png)

## Multiple Linear Regression
- To predict Y based on multiple variables
![image](https://user-images.githubusercontent.com/48233453/126876873-de196180-6371-417f-a10f-4cfa538e9491.png)

- after we find the coefficients, we have found the model
![image](https://user-images.githubusercontent.com/48233453/126876893-75ec2780-5fe4-4dbe-811e-caba516be68f.png)

![image](https://user-images.githubusercontent.com/48233453/126876910-d4bc8f34-e102-4d81-a021-8638c4ed19c1.png)

- need to fit a 2D plane to the data points instead of a line, in order to predict Y
- Find the find the best fitting plane in a 3D place
- ![image](https://user-images.githubusercontent.com/48233453/126876929-6d02ddbd-7481-441b-8f69-eba3b44f60f8.png)

## Evaluation Metrics
- MAE: Mean absolute error : how close forecasts or predictions are to the eventual outcomes.
- RMSE: root means square : average magnitude of the error. Square root of the average is taken
-- problems with RMSE is that they errors are squared before they are averaged, therefore, RMSE gives a relatively high weight to large errors (outliers).
-- RMSE is not useful when large errors are not particularly undesireable.

![image](https://user-images.githubusercontent.com/48233453/126876945-f975e563-6b19-41ca-a15f-56428260a7c6.png)

![image](https://user-images.githubusercontent.com/48233453/126876957-8b5cbb8b-d908-42e5-9eb1-b6c6574c45ef.png)


- R-Square
-- how close the data are to the fitted regression line. It is also known as the coeffieiceint of determeniation, or the coefficient of multiple determination for multiple regression.
- the model fits the data well if the differences between the observed values and the model's predicted values are small and unbiased
![image](https://user-images.githubusercontent.com/48233453/126877077-d79f8951-1623-439b-82b9-340301d41b9c.png)

- closer to one means that the better accuracy of the model
- for MAE and RMSE a lower number means a better model
- 





- 
