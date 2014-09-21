#install.packages("shiny")
library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Bank ABC Credit Scorecard"),
    sidebarPanel(
      textInput(inputId='Late_amount', label= "Late Amount"),
      textInput(inputId = 'Balance', label= "Balance in Account"),
      submitButton('Submit')
      ),
    mainPanel(
      p('Output Late Amount'),
      textOutput('Late_amount'),
      p('Output Balance in Account'),
      textOutput('Balance'),
      p('Output Credit Score'),
      textOutput('Credit_Score')
      )
    )
  )
      

      
