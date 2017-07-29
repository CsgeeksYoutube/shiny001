library(shiny)
shinyServer(function(input,output){
  output$city <- renderText(input$cityname)
  
})    