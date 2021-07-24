

# interactive plots
## using a library called plotly
## install plotly
library(plotly) ## import library

d <- diamonds[sample(nrow(diamonds), 1000), ]
plot_ly(d, x = ~carat, y = ~price, color = ~carat, size = ~carat, test = ~paste("Clarity: ", clarity))


