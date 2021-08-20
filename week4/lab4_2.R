# Download the “Real Estate data Transactions” from Canvas and import it into R. Then, address the following questions:
 

# How many unique cities exist in the city column?

df_uniq <- unique(newRealEstate$city)
length(df_uniq)
36
# Is there any correlation between the sq__ft and price? Show the correlation both in number and visually.
cor(newRealEstate$sq__ft, newRealEstate$price)
[1] 0.6937079
# Use a plot to show the distribution of the prices.
ggplot(newRealEstate, aes(price)) + geom_density()
# Repeat the above task for price and latitude.
ggplot(newRealEstate, aes(latitude)) + geom_density()
# Is there any correlation between the number of beds and baths?
cor(newRealEstate$beds, newRealEstate$baths)
[1] 0.6547463
# Compare the price ranges for different bed numbers. Which bed number has a higher price in general? Which bed number has a greater fluctuation in price?
ggplot(newRealEstate, aes(x=as.character(beds), y=price, color=beds)) + geom_violin()
# Repeat the above task for bath number vs. prices.
# Find the rows which have only one bed.
which(newRealEstate$beds == 1)
# Find the rows which have a sq__ft less than 1000 and at least two beds.
which(newRealEstate$sq__ft < 1000 & newRealEstate$beds == 1)
