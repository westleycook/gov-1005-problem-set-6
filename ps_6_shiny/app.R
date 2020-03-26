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

# Using renderImage to create ci_image (used above in plotOutput)
    
    output$ci_image <- renderImage({
        
# Making a list with the image file location, specified width and height, and
# alt text to show instead of the image if it's not available
        
        list(src = "dist_plot.png", 
             width = 700, 
             height = 500,
             alt = "A plot of bootstrapped confidence intervals")

# Telling renderImage to NOT delete the file after showing it                
        
    }, deleteFile = FALSE)
}

# Run the application 

shinyApp(ui = ui, server = server)
