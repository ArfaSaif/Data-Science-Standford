library(caret)
mtcars = mtcars

training = mtcars[seq(1 , nrow(mtcars), 2), c("mpg","wt")]

test = mtcars[seq(2 , nrow(mtcars), 2), c("mpg","wt")]

model = train(mpg~., training, method ="rf")

model$finalModel

predictedMPGs = predict(model, test)


as.numeric(predictedMPGs)



 real = test$mpg
 MAE(predictedMPGs, test$mpg) 
 R2(predictedMPGs, test$mpg) 
 RMSE(predictedMPGs, test$mpg) 
 
 ##############
 
 #If you have not already, install the “caret” package and make sure you can successfully load it by running: library(caret).
 
 
 #Download the CSV file for “Real Estate Transactions” from last week. Then, address the following:
  # Build a linear regression model in order to predict the price of houses from square feet.
 #Split the data to half and repeat the previous task on the training set.
 #Use the model you trained, to predict prices in the test data and measure RMSE and R-Squared for your predictions.
 #Use “beds”, “baths” and “sq__ft” to predict “prices” using multiple linear regression. Train on the first half of the data and measure RMSE and R-Squared on the Test set. Compare results with the previous task.
 #Use “beds”, “baths” and “sq__ft” to predict “prices” using the Bayesian Ridge Regression model. Train on the first half of the data and measure RMSE and R-Squared on the Test set. Compare results with previous models.
 
 
 realEstate = read.csv("sacramentorealestatetransactions.csv")
 ind = which(realEstate$sq__ft == 0)
 newRealEstate = realEstate[-ind,]
 
 training = newRealEstate[seq(1 , nrow(newRealEstate), 2), c("price","sq__ft")]
 
 test = newRealEstate[seq(2 , nrow(newRealEstate), 2), c("price","sq__ft")]
 
 model = train(price~., training, method ="lm")
 
 model$finalModel
 
 predictedPrices = predict(model, test)
 
 
 as.numeric(predictedPrices)
 
 
 
 real = test$price
 MAE(predictedPrices, test$price) 
 R2(predictedPrices, test$price) 
 RMSE(predictedPrices, test$price) 
 
 #######
 
 realEstate = read.csv("sacramentorealestatetransactions.csv")
 ind = which(realEstate$sq__ft == 0)
 newRealEstate = realEstate[-ind,]
 
 training = newRealEstate[seq(1 , nrow(newRealEstate), 2), c("price","sq__ft", "beds", "baths")]
 
 test = newRealEstate[seq(2 , nrow(newRealEstate), 2), c("price","sq__ft", "beds", "baths")]
 
 model = train(price~., training, method ="lm")
 
 model$finalModel
 
 predictedPrices = predict(model, test)
 
 
 as.numeric(predictedPrices)
 
 
 
 real = test$price
 MAE(predictedPrices, test$price) 
 R2(predictedPrices, test$price) 
 RMSE(predictedPrices, test$price) 
 
 #######
 
