library(shiny)
# Define the overall UI
shinyUI(pageWithSidebar(
        # Page title
        headerPanel("Manual Transmission car mileage predictor based on number of cylinders,Horsepower and Weight"),
        # Generate a row with a sidebar
        sidebarPanel(
                h3('Input Options'),
                selectInput("cyl", "Number of cylinders:",
                            choices=c("4", "6", "8")),
                sliderInput("hp", "HorsePower:",
                            min=52.0, max=335.0, step=0.5, value=123.0),
                sliderInput("wt", "Weight (lb/1000):",
                            min=1.5, max=5.4, step=0.1, value=3.3),
                submitButton('Submit'),
                hr(),
                h3('Author: Sai krishnan'),
                p('Sai is a Research Group Manager on weekdays, a student on weekends and an avid learner on Coursera. This app is the final project for the Data Science specialization offered by Coursera and the Johns Hopkins Bloomberg School of Public Health.'),
                p('The model used to predict mileage is based on the mtcars dataset and built during the regression models course. This app is copyright 2015 by Sai krishnan and all rights are reserved.')
        ),
        
        mainPanel(
                h3('Predicted Mileage (MPG)'),
                h4('You entered number of cylinders'),
                verbatimTextOutput("inputcyl"),
                h4('You entered horsepower'),
                verbatimTextOutput("inputhp"),
                h4('You entered weight (tonnes)'),
                verbatimTextOutput("inputwt"),
                h4('Predicted mileage (in Miles Per Gallon) of the car is'),
                verbatimTextOutput("prediction")
        )
))