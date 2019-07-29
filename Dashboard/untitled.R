library(shiny)
library(shinydashboard)
library(plotly)

ui <- dashboardPage(
  dashboardHeader(title = "My dashboard", titleWidth = 350),
  dashboardSidebar(  width = 350, 
                     sidebarMenu(
                       menuItem( "Critical Success Factor" ,tabName = "CSF"),
                       menuItem("Top Cited Publication", tabName = "TCP", icon = icon("bar-chart-o")),
                       menuItem("Gross domestic R&D", tabName = "GERD" , icon = icon("bar-chart-o"),
                               menuSubItem(" higher education (in '000 current PPP$)", tabName = "GERD_HE"),
                               menuSubItem("phigher education %", tabName = "GERD_HE_PER"),
                               menuSubItem("higher education as a percentage of GDP", tabName ="GERD_PER_GDP"))
                       
                     )),
  
  dashboardBody(
    fluidPage(
      tabItems(
        tabItem(tabName = "CSF",
                h3(" Critical success factor (CSF) is a management term for an 
              element that is necessary for an organization or
              project to achieve its mission. To achieve their goals they
              need to be aware about each key success factor
                 (KSF) and the variations between the keys and the  
                 different roles key result area (KRA).")
        ),
        tabItem(tabName = "TCP", fluidRow( box(plotlyOutput("phoneP", width = "100%", height = "400px", inline = FALSE))
        )),
        tabItem(tabName = "GERD_HE", fluidRow(box(plotlyOutput("higherEdu"))
    )),
    tabItem(tabName = "GERD_HE_PER", fluidRow(box(plotlyOutput("EduASPercentage")))),
    tabItem(tabName = "GERD_PER_GDP", fluidRow(box(plotlyOutput("gredPerGDP"))) )
    
  )
)))

server <- function(input, output) {
  output$phoneP <- renderPlotly({p1})
  output$higherEdu <- renderPlotly({PPP}) 
  output$EduASPercentage <- renderPlotly({EduASPercentage})
  output$gredPerGDP <- renderPlotly({gredPerGDP})
}
shinyApp(ui, server)

install.packages('rsconnect')
