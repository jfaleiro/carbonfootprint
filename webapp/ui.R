library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Browsing Features Related to the Carbon Footprint of mid-70's Automobiles"),
    sidebarPanel(
        selectInput('xcol', 'Predictor', names(mtcars), selected='hp'),
        selectInput('ycol', 'Outcome', names(mtcars), selected='mpg'),
        selectInput('cluster', 'Clustered', names(mtcars), selected='wt')
    ),
    mainPanel(
        plotOutput('plot1')
    )
))