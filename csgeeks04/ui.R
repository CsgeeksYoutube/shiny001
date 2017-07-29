library(shiny)
shinyUI(fluidPage(
  titlePanel("this is example of sliderInput widget in shiny"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("slide","Select the value", min =0, max= 100, value=5, animate = TRUE)
    ),
    mainPanel(
      textOutput("ans")
    )
  )
  
))