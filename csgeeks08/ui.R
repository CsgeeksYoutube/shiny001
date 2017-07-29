library(shiny)
shinyUI(fluidPage(
  titlePanel("Shiny button example"),
  sidebarLayout(
    sidebarPanel(
      numericInput("no1","Enter the 1st number", value= 250),
      numericInput("no2","Enter the 2nd number", value=500),
      actionButton("btn","Calculate")
    ),
    mainPanel(
      textOutput("total")
    )
  )
  
))