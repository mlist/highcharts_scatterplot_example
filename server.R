library(shiny)
library(rCharts)

source("scatterplot.R")

shinyServer(function(input, output) {
  
  output$testPlot <- renderChart2({
    
    p <- highcharts.scatterplot.plate(data.frame(seq(1:nrow(iris)),iris[,2], input$error, iris[,5]))
    
    p$exporting(enabled=TRUE)
    return(p)
  })
})