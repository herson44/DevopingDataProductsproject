## This is the first part of the App.
## In this simple example of app whe develop a manipulable histogram

## Loading requare package

library(shiny)

## Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Manipulable Histogram"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("samples",
                  "Number of samples:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))