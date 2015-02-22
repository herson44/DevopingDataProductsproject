## Second File of the App

## We read ones again the required program.

library(shiny)

## Define server logic required to draw a histogram

shinyServer(function(input, output) {
    
  output$distPlot <- renderPlot({
    samples    <- faithful[, 2] 
    bins <- seq(min(samples), max(samples), length.out = 1)
    
    # draw the histogram with the specified number of bins
    hist(samples, breaks = bins, col = 'red', border = 'white')
  })
})