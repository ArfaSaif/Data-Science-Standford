function(input, output, session) {
  
  # Combine the selected variables into a new data frame
  df = read.csv("Life Expectancy Data.csv")
  # remove the rows with missing data
  
  
  # Q1: What are the predicting variables actually affecting the life expectancy?
  df <- df[complete.cases(df), ]
  
  
  output$plot1 <- renderPlot(
    
    ggplot(df, aes_string(input$xcol, input$ycol, color=input$xcol)) + geom_point(size = 2) +theme_bw()
    
  )
  
}