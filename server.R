# Final Project Course Developing Data Products in R
# Author: Leonardo Alves
# Server
# March 9th, 2017

library(shiny)
shinyServer(function(input, output) {
  
   model <- lm(height ~ weight, data = women)
   modelpred <- reactive({
    wgtInput <- input$sliderWGT
    predict(model, newdata = data.frame(weight = wgtInput))
  })
  
  output$plot1 <- renderPlot({
    wgtInput <- input$sliderWGT
    
    plot(women$weight, women$height, xlab = "Weight(lbs)", 
         ylab = "Height (in)",xlim = c(110, 170), ylim = c(55, 75))
    
    points(wgtInput, modelpred(), col = "red", pch = 16, cex = 2)
  })
  
  output$pred1 <- renderText({
    modelpred()
  })
  
})
