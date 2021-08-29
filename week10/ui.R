# k-means only works with numerical variables,
# so don't give the user the option to select
# a categorical variable

df = read.csv("Life Expectancy Data.csv")


pageWithSidebar(
  headerPanel('Factors Effecting Life Expectancy'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', list("Income Composition of Resources" = "Income.composition.of.resources",
                                           "Adult Mortality" = "Adult.Mortality",
                                           "Schooling" = "Schooling",
                                           "Infant Deaths" = "infant.deaths",
                                           "GDP" = "GDP",
                                           "Population" = "Population",
                                           "Alcohol" = "Alcohol"
                                           )),
    selectInput('ycol', 'Y Variable', list("Life.expectancy" = "Life.expectancy")),
    
  ),
  mainPanel(
    plotOutput('plot1')
  )
)