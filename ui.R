#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Daily World Oil Consumption Data"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("OilConsumptionSlider", "What is the Daily Oil Consumption (barrels)? (Select the ranking)", 1, 214, value = c(1, 5) )
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h3("Graph of Daily World Oil Consumption(Barrels)"),
      textOutput("text1"),
      plotOutput("plot1")
    )
  )
))
