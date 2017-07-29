library(shiny)
shinyUI(fluidPage(
  titlePanel(title =h1("example of renderplot", align="center")),
  sidebarLayout(
    sidebarPanel(
      selectInput("var","select the vaiable form iris dataset",choices=c("Sepal.Length"= 1,"Sepal.Width"=2 ," Petal.Length"=3,
                                                                         "Petal.Width"=4 ),selected=1),
      br(),
      sliderInput("bin","Select the number of bins", min=0, max=23, value = 15),
    br(),
      radioButtons("color","Select the color", choices =c("Green", "Red","Black"),selected = "Red")
      
    ),
    mainPanel(
      tabsetPanel(type="tab",
                  tabPanel("Plot", plotOutput("mhist")),
                  tabPanel("Summary",verbatimTextOutput("sum")),
                  tabPanel("Data",tableOutput("data") ),
                  tabPanel("Structure",verbatimTextOutput("str")))
      
      
    
    )
  )
  
))