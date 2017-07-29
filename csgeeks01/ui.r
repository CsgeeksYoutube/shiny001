library(shiny)

shinyUI(fluidPage(
  titlePanel(title = "hello frnd this is csgeeks"),
  sidebarLayout(position = "right",
    sidebarPanel(h1("this is sidebarpanel")),
    mainPanel (h1("this is mainpanel"),h3("i am vijay"))
    
  )
  
  
))