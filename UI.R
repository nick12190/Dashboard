library(shiny)
library(shinydashboard)
library(plotly)
library(shinythemes)


ui <- dashboardPage(
    dashboardHeader(title = "EU Research Quality", titleWidth = 350),
    dashboardSidebar(  width = 350, 
                       sidebarMenu(
                           menuItem( "Scientific Productivity" ,tabName = "CSF"),
                           menuItem("Top Cited Publication", tabName = "TCP", icon = icon("bar-chart-o")),
                           menuItem("Gross domestic R&D", tabName = "GERD" , icon = icon("fas fa-chart-line"),
                                    menuSubItem(" Higher Education (in '000 current PPP$)", tabName = "c"),
                                    menuSubItem("Percentage of Higher Education", tabName = "GERD_HE_PER"),
                                    menuSubItem("Higher Education as a percentage of GDP", tabName ="GERD_PER_GDP")),
                                    menuItem("Predictive Analytics for GERD", tabName = "PredAna",
                                             menuSubItem("Germany" ,tabName = "Pred_Ger"  ),
                                             menuSubItem("United Kingdom", tabName = "PA_UK"))
                       )),
    
    dashboardBody(
        fluidPage( 
            tabItems(
                tabItem(tabName = "CSF", theme = shinytheme("readable"),
                        h3(" Scientific productivity is a measure based on counts of publications, 
                           citations to those publications of a scientist,Department, division or Institute(s) or
                           expenditure on research and developement.The inputs to scientific productivity can be publications,
                           expenditure on research and developement."),
                           h3 ("Top cited publication and Gross domestic expenditure(GDE) on research and developement are the two 
                               KPI's selected for Scientific productivity.")
                ),
                tabItem(tabName = "TCP", fluidRow( box(plotlyOutput("A", width = 800, height = 400, inline = FALSE))
                )),
                tabItem(tabName = "c", fluidRow(box(plotlyOutput("PPP" , width = 800, height = 400, inline = FALSE))
                )),
                tabItem(tabName = "GERD_HE_PER", fluidRow(box(plotlyOutput("EduASPercentage", width = 800, height = 400, inline = FALSE)))),
                tabItem(tabName = "GERD_PER_GDP", fluidRow(box(plotlyOutput("gredPerGDP",width = 800, height = 400, inline = FALSE)))
                        ),
                tabItem(tabName = "Pred_Ger" , fluidRow(box(plotlyOutput("Pred_Ger", width = 800, height = 400, inline = FALSE)
                        ))),
                tabItem(tabName = "PA_UK",fluidRow(box(plotlyOutput("PA_UK", width = 800, height = 400, inline = FALSE) )))

                
        
        ))))