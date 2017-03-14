# Final Project Course Developing Data Products in R
# Author: Leonardo Alves
# User Interface
# March 9th, 2017

library(shiny)

shinyUI(fluidPage(
  titlePanel("Predict Average Heights (in) from Weights (lbs) - American Women aged 30-39"),
  sidebarLayout(
    sidebarPanel(
      h4('Documentation'),
      h5('The objective of this App was Predict Average Heights (in) from Weights (lbs).'),
      h5('This app is very easy to use. Just scroll the slider bellow for the weight that you want and then you will see the results of predictions to the height (graphic and numeric) on the right.'),
      h5('End of documentation'),
      h6('_____________________________________________'),
      sliderInput("sliderWGT", "What is the weight(lbs) of the woman?", 110, 170, value = 137),
      h5('Remember:'),
      h5('For better prediction, consider only women between 30-39 years old')
    ),
    mainPanel(
      plotOutput("plot1"),
      h3("Predicted Height (in) from Model:"),
      textOutput("pred1")
    )
  )
))
