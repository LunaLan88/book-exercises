# Exercise 2: a basic Shiny app

# Load the `shiny` package
library("shiny")

# Define a new `ui` variable. This variable should be assigned a `fluidPage()` layout
# The `fluidPage()` layout should be passed the following:
ui <- fluidPage(
  titlePanel("Cost Calculator"),
  numericInput("Price", label = "Price (in dollars)", min = 0, value = 0),
  numericInput("Quantity", label = "Quantity", value = 1, min = 1),
  strong("Cost"),
  textOutput("cost")
  )
 
server <- function(input, output){
  output$cost <- renderText({
    t <- input$price * input$quantity
    price <- paste0("$", t)
  })
}  
shinyApp(ui = ui, server = server)

# Create a new `shinyApp()` using the above ui and server

