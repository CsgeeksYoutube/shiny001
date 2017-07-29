library(shiny)
shinyServer(function(input,output){
  output$ans <- renderText(
    paste("selected value is:---",input$slide))
  
})