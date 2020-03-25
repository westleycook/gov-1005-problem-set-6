library(shiny)

# Define UI for application that shows a plot
ui <- fluidPage(

    # Application title
    titlePanel("Plotting Confidence Intervals"),

    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("ci_image")
    )
)

# Define server logic required to show the plot
server <- function(input, output) {

    output$ci_image <- renderImage({
        list(src = "dist_plot.png", 
             width = 700, 
             height = 500,
             alt = "A plot of bootstrapped confidence intervals")
    }, deleteFile = FALSE)
}

# Run the application 
shinyApp(ui = ui, server = server)
