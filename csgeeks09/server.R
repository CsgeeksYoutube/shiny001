 library(shiny)
shinyServer(function(input,output){
  x <- reactive({
    iris[,as.numeric(input$var1)]
  })
  y <- reactive({
    iris[,as.numeric(input$var2)]
  })
  output$plot <- renderPlot({
    
    plot(x(),y())
  })
  
  output$down <- downloadHandler(
    filename = function(){
      paste("iris",input$var3,sep=".")
    },
    content = function(file){
      if(input$var3 == "png")
        png(file)
      else
        pdf(file)
      plot(x(),y())
      dev.off()
    }
    
  )
  

}) 