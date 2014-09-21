library(shiny)
Late_amount <<- 0
Balance <<- 0
Credit_Score <<- 0
Decision <<- as.character("Declined")
shinyServer(
  function(input, output) {
    output$Late_amount <- renderText({input$Late_amount})
    output$Balance <- renderText({input$Balance})
    output$Credit_Score <- renderText({as.numeric(
      -3.3489 + 0.00005*(as.numeric(input$Late_amount))
      + 2.7348*(as.numeric(input$Balance)))})
    })