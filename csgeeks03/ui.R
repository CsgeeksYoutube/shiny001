library(shiny)
shinyUI(fluidPage(
  titlePanel(title = "This is 2 tutorial of shiny"),
  sidebarLayout(
    sidebarPanel(("enter the information"),
                 textInput("name","Enter your name",""),
                 textInput("age","Enter you age",""),
                 radioButtons("gender","select the gender", list("Male","female","other"))
                 ),
    mainPanel(("Personal Information Printout"),
              textOutput("mname"),
              textOutput("mage"),
              textOutput("mgender"))
    
    
    
  )
)
)

