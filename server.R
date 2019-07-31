  server <- function(input, output) {
      output$A <- renderPlotly({A})
      output$PPP <- renderPlotly({PPP}) 
      output$EduASPercentage <- renderPlotly({EduASPercentage})
      output$gredPerGDP <- renderPlotly({gredPerGDP})
      output$Pred_Ger <- renderPlotly({Pred_Ger
      })
      output$PA_UK <- renderPlotly({PA_UK})
  }

