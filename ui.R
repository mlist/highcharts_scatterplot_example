library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Highcharts scatterplot with errorbars!"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("error",
                  "error size",
                  min = 0.01,
                  max = 0.3,
                  step = 0.01,
                  value = 0.1)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      showOutput("testPlot", "highcharts")
    )
  )
))