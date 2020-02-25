# install.packages("shiny")
# install.packages("shinydashboard")
# install.packages("shinythemes")
# install.packages("car")
# install.packages("summarytools")
# install.packages("pwr")
# install.packages('lsr')
# install.packages('stargazer')
# install.packages('rgl')
# install.packages('DescTools')
# install.packages('devtools')
# install.packages('readxl')
# install.packages('usethis')
# devtools::install_github("Displayr/flipAPI")

library(shiny)
library(shinydashboard)
library(shinythemes)
source('D:/ocean-cleanup/ocean-cleanup/supporting-scripts/Agg_max_item_by_state.R')


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
      )
    )
  
)

# Define server logic for random distribution application
server <- function(input, output) {
  
}

shinyApp(ui, server)
