#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$text1 = renderText(input$OilConsumptionSlider)
  output$plot1 <- renderPlot({
    set.seed(2016-05-25)
    minX <- input$OilConsumptionSlider[1]
    maxX <- input$OilConsumptionSlider[2]
    data <- read.csv("WorldOilStats.csv", header=TRUE)
    str(data)
    ylab <- "Daily Oil Consumption (Barrels)"
    xlab <- "Ranking"
    main <- "World Oil Consumption"
    plot(data$Ranking, data$DOC, xlab = xlab, ylab = ylab, xlim = c(minX, maxX))
    with(data[minX:maxX,],text(data$Ranking, data$DOC, labels = (data[minX:maxX,2,]), pos = 3))
    with(data[minX:maxX,],text(data$Ranking, data$DOC, labels = (data[minX:maxX,3,]), pos = 4))
  })
})
