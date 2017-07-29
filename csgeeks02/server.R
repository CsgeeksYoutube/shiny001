library(shiny)
shinyServer(function(input, output){
  output$mname <- renderText(input$name)
  output$mage <- renderText(input$age)
  
})