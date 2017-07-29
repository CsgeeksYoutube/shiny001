library(shiny)
shinyServer(function(input,output){
  
  calculate<- eventReactive(input$btn,{
    input$no1+ input$no2
  })
  
  
  output$total<- renderText({
    calculate()
  })
  
})