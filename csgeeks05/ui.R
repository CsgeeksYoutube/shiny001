library(shiny)
shinyUI(fluidPage(
  titlePanel("example of selectINput ui widget in shiny"),
  sidebarLayout(
    sidebarPanel(
      selectInput("cityname","Select the city u like",c("DDUN","HLD","NTL","DL"),selected = "HLD", selectize = T,multiple = T)
      
    ),
    mainPanel(
      textOutput("city")
    )
  )
  
))