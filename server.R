#
# Author: John Shomaker 
# App: Week 4-Shiny (mtcars)
# Component: server.R
# Date: 11/13/16
# Coursera: Developing Data Products (Week 4)
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define server logic for application that draws a ggplot point chart
# For mtcars dataset, comparing displacement vs. mpg
# Based on user-input # of cylinders

shinyServer(function(input, output) {
   
  output$cylPlot <- renderPlot({
 
    # subset mtcars data based on cylinders specified in ui.R
    cars1 <- mtcars[, 1:3]
    cars1 <- subset(cars1, cyl == input$cyl)
       
    # generate plot of mpg vs. displacement
    # include labels linear model fit
    g <- ggplot(cars1, aes(x = mpg, y = disp))
    g <- g + geom_point(color = "red", alpha = 1)
    g <- g  + geom_smooth(method="lm", col = "steelblue")
    g <- g  + theme_bw(base_family = "Avenir", base_size = 10)
    g <- g  + labs(x = "MPG")
    g <- g  + labs(y = "Engine Displacement")
    g <- g  + labs(title = "Displacement vs. MPG by Cylinder")
    g
    
  })
  
})
