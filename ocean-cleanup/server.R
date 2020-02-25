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
# install.packages("DT")

library(shiny)
library(shinydashboard)
library(shinythemes)
library(DT)
source('D:/ocean-cleanup/ocean-cleanup/supporting-scripts/Agg_max_item_by_state.R')


# We'll save it in a variable `ui` so that we can preview it in the console
ui <- fluidPage( theme="paper",
    
    titlePanel("Ocean Cleanup"),
                 
    sidebarLayout(
      sidebarPanel(),
      mainPanel(
        tabsetPanel(
          id = 'dataset',
          tabPanel("watercraft", dataTableOutput("watercraft")),
          tabPanel("land", dataTableOutput("land")),
          tabPanel("underwater", dataTableOutput("underwater"))
        )
      )
    )
)

# Define server logic for random distribution application
server <- function(input, output) {
  output$watercraft <- renderDataTable(
    datatable(ocean.watercraft.maxitembystate)
  )
  output$land <- renderDataTable(
    datatable(ocean.land.maxitembystate)
  )
  output$underwater <- renderDataTable(
    datatable(ocean.underwater.maxitembystate)
  )
}

shinyApp(ui, server)
