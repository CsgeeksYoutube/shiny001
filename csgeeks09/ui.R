library(shiny)
shinyUI(fluidPage(
  titlePanel(title =h1("example of DownloadButton and Downloadhandler", align="center")),
  sidebarLayout(
    sidebarPanel(
      selectInput("var1","select the X vaiable form iris dataset",choices=c("Sepal.Length"= 1,"Sepal.Width"=2 ," Petal.Length"=3,
                                                                         "Petal.Width"=4 ),selected=1),
      br(),
      selectInput("var2","select the Y vaiable form iris dataset",choices=c("Sepal.Length"= 1,"Sepal.Width"=2 ," Petal.Length"=3,
                                                                         "Petal.Width"=4 ),selected=2),
      br(),
      radioButtons("var3","Select the file type", choices =list("png", "pdf"))
      
    ),
    mainPanel(
      plotOutput("plot"),
      downloadButton("down","Download the plot ")
    )
  )
  
))