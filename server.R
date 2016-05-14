library(shiny)
shinyServer(
  function(input, output){
    output$bmi <- renderText({ calculatebmi(input$height, input$Weight) })
    
  }
)

calculatebmi <- function (height, weight) 
{
  rh <- height*height
  result <- weight/rh
  return(round(result, digits = 2))
}



