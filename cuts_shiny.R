#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(tidyverse)

shinycuts <- cuts %>%
  select(date=End.Date, Duration, Plant.Type)


# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Plant Cut Durations Data"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
        checkboxGroupInput("p_type",
                           "Plant Type",
                           choices=c("TES", "HES", "DKGC", "JES", "RES", "Other"),
                           selected="TES"),
        dateRangeInput("date",
                       "Date Range",
                       min(shinycuts$date),
                       max(shinycuts$date)),
        selectInput("time",
                    "Sum by",
                    choices=c("day", "week", "month", "year"))
        ), 
      # Show a plot of the generated distribution
      mainPanel(
         plotOutput("cutsPlot")
      )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
   output$cutsPlot <- renderPlot({
     modifiedData <- shinycuts %>% 
       filter(date >= input$date[1] & date <= input$date[2]) %>%
       filter(Plant.Type %in% input$p_type) %>%
       group_by(Plant.Type, date=floor_date(date, input$time))%>%
       summarise(Duration=sum(Duration))
      # draw the histogram with the specified number of bins
      ggplot(data=modifiedData, aes(x=date, y=Duration/60, color=Plant.Type))+
        geom_point()+
        theme_bw()+
        labs(y="Duration(mins)", x="Date", title="Cumulative Cut Duration")+
        if(input$time=="year"){
        scale_y_continuous(limits=c(0,600))
        }
        else if(input$time=="month"){
        scale_y_continuous(limits=c(0,100))
        }
        else if(input$time=="week"){
        scale_y_continuous(limits=c(0,10))
        }
        else if(input$time=="day"){
        scale_y_continuous(limits=c(0,5))
        }
   })
}

# Run the application 
shinyApp(ui = ui, server = server)

