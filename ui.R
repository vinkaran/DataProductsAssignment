library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("BMI Calculation"),
  sidebarPanel(
    h4('BMI'),
    numericInput('height', 'Height in Meters', 1.55),
    numericInput('Weight', 'Weight in KG', 75)
    ),
  mainPanel(
    h4('Your BMI is  - '),
    textOutput("bmi"),
    h4('BMI Vs Age'),
    helpText("BMI < 18.5 - Under Weight"),
    helpText("BMI Between 18.5 and 24.9 - Normal Weight"),
    helpText("BMI Between 25 and 29.9 - Over Weight"),
    helpText("BMI > 30 - Obese")
    
  )
))