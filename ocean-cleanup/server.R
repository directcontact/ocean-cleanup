# install.packages("shiny")
# install.packages("shinydashboard")
# install.packages("shinythemes")
library(shiny)
library(shinydashboard)
library(shinythemes)



# We'll save it in a variable `ui` so that we can preview it in the console
ui <- fluidPage( theme="paper",
                 
    titlePanel("Ocean Cleanup"),
    
    sidebarLayout(
      sidebarPanel(
        textInput("txt", "Text input:", "text here"),
        sliderInput("slider", "Slider input:", 1, 100, 30),
        actionButton("action", "Button"),
        actionButton("action2", "Button2", class = "btn-primary")
      ),
      
      mainPanel(
        box(title="test main", width="4")
      )
    )
  
)

# Define server logic for random distribution application
server <- function(input, output) {
  
}

shinyApp(ui, server)
