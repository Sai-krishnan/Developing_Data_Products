predictMileage <- function(cyl,hp,wt) {
#Models for predicting the mileage of manual transmission cars are based on number of cylinders setup as a dummy variable
#The complete equation is MPG(MT) = 43.6515928 -1.4867858x6CYL +1.9868579x8CYL -0.0275853xHP -6.5212611xWT
        if (cyl=="4") {43.6515928-0.0275853*hp-6.5212611*wt}
        else if (cyl=="6") {43.6515928-1.4867858-0.0275853*hp-6.5212611*wt}
        else {43.6515928+1.9868579-0.0275853*hp-6.5212611*wt}
}

shinyServer(
        function(input, output) {
                output$inputcyl   <- renderPrint({input$cyl})
                output$inputhp    <- renderPrint({input$hp})
                output$inputwt    <- renderPrint({input$wt})
                output$prediction <- renderPrint({predictMileage(input$cyl,input$hp,input$wt)})
        }
)