library(shiny)
library(rCharts)

source("scatterplot.R")

shinyServer(function(input, output) {
  
  output$testPlot <- renderChart({
    
    p <- highcharts.scatterplot.plate(data.frame(seq(1:nrow(iris)),iris[,2], input$error, iris[,5]))
    
    p$set(dom="testPlot")
    return(p)
  })
})