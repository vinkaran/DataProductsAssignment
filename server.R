library(shiny)
shinyServer(
  function(input, output){
    output$Calories <- renderText({ calculatecalories(input$Sex, input$Age,input$Weight, input$HeartRate, input$Wtime) })
    
  }
)

calculatecalories <- function (Sex, Age, Weight, HeartRate, Wtime) 
{
  

  
  Calories <- if(Sex == 'Male')  { ((((Age * 0.2017) - (Weight * 0.09036) + (HeartRate * 0.6309) - 55.0969)) * Wtime)/4.184 } 
              else  {((((Age * 0.074) - (Weight * 0.05741) + (HeartRate * 0.4472) - 20.4022)) * Wtime)/4.184 }
  
  
}



