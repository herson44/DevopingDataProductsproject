## This is the first part of the App.
## In this simple example of app whe develop a manipulable histogram

## Loading requare package

library(shiny)

## Define UI for application that draws a histogram
shinyUI(fluidPage(
  
## Title
  titlePanel("Manipulable Histogram"),
  
##slide bar
  sidebarLayout(
    sidebarPanel(
      sliderInput("samples",
                  "Number of samples:",
                  min = 1,
                  max = 50,
                  value = 5)
    ),
    
## Dsitribution by number of samples
    mainPanel(
      plotOutput("distPlot")
    )
  )
))