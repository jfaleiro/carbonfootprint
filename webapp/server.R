library(shiny)
library(ggplot2)

shinyServer(function(input, output, session) {
    
    # Combine the selected variables into a new data frame
    selectedData <- reactive({
        mtcars[, c(input$xcol, input$ycol)]
    })
    
    # Render a plot whenever a reactive changes
    output$plot1 <- renderPlot({
        p <- qplot(mtcars[input$xcol], mtcars[input$ycol], colour=mtcars[input$cluster], data=mtcars) +
            geom_smooth(method='lm', formula=y~x) +
            xlab(input$xcol) +
            ylab(input$ycol) +
            labs(colour=input$cluster)
        print(p)
    })
    
})