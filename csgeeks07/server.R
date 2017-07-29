library(shiny)
shinyServer(function(input,output){
  
  output$sum <- renderPrint({
    summary(iris)
  })
  
  output$str <- renderPrint({
    str(iris)
    
  })
  
  output$data <- renderTable({
    colm<- as.numeric(input$var)
    iris[colm]
    
  })
  
  
  
  output$mhist <- renderPlot({
    col <- as.numeric(input$var)
    hist(iris[,col], breaks =seq(0, max(iris[,col]),l=input$bin+1),col=input$color,
                                 main="Histagram of iris", xlab=names(iris[col]))
    
  })
})    