library(ggplot2)
chickwts=chickwts

ggplot(chickwts, aes(feed,weight, color = feed)) + geom_boxplot()
# casein has the highest average weight on average
# caseing has the highest and horbeans has the lowest
# more 
# categorialc on the xaxis and continous on the yaxis
ggplot(chickwts, aes(feed,weight, color = feed)) + geom_violin() + theme_bw()

library(plotly)
# interactive plotly plot that gives more statistical info
# ~ is just the syntax
fig <- plot_ly(chickwts, y = ~chickwts$weight, color = ~chickwts$feed, type = "box")

fig
