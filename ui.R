library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Calories Burnt Calculation"),
  sidebarPanel(
    h4('Calroes Burnt'),
    selectInput('Sex', label='Select your Sex', c("Male","Female")),
    numericInput('Age', 'Your Age', 40),
    numericInput('Weight', 'Weight in Lbs', 175),
    numericInput('HeartRate', 'Heart Rate in BPM', 125),
    numericInput('Wtime', 'Workout Time in Mins', 60)
    
    ),
  mainPanel(
    h4('Your Calories Burnt is - '),
    textOutput("Calories")
  )
))