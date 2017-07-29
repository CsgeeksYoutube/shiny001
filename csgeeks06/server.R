library(shiny)
shinyServer(function(input,output){
  output$mhist <- renderPlot({
    col <- as.numeric(input$var)
    hist(iris[,col], breaks =seq(0, max(iris[,col]),l=input$bin+1),col=input$color,
                                 main="Histagram of iris", xlab=names(iris[col]))
    
  })
})    