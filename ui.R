#
# Author: John Shomaker 
# App: Week 4-Shiny (mtcars)
# Component: ui.R
# Date: 11/13/16
# Coursera: Developing Data Products (Week 4)
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a ggplot point chart
# For mtcars dataset, comparing displacement vs. mpg
# Based on user-input # of cylinders

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Car Engine Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("cyl",
                   "Number of Cylinders:",
                   min = 4,
                   max = 8,
                   step = 2,
                   ticks = FALSE,
                   value = 4)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("cylPlot")
    )
  )
))
