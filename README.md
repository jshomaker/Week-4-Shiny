# Week-4-Shiny
Example Shiny App: MTCARS

This example app shows how engine displacement varies with MPG for specific car cylinders. 
There are many ways to download and run it:

library(shiny)

# Easiest way is to use runGitHub
runGitHub("ShinyCars", "rstudio")

# Run a tar or zip file directly
runUrl("https://github.com/rstudio/ShinyCars/archive/master.tar.gz")
runUrl("https://github.com/rstudio/ShinyCars/archive/master.zip")
Or you can clone the git repository, then use runApp():

# First clone the repository with git. If you have cloned it into
# ~/ShinyCars, first go to that directory, then use runApp().
setwd("~/ShinyCars")
runApp()
To run a Shiny app from a subdirectory in the repo or zip file, you can use the subdir argument. This repository happens to contain another copy of the app in inst/shinyapp/.

runGitHub("ShinyCars", "rstudio", subdir = "inst/shinyapp/")

runUrl("https://github.com/rstudio/shiny_example/archive/master.tar.gz",
  subdir = "inst/shinyapp/")
