#load data
Hour <- seq(0.5, 23.5, 1)


#
shiny app now

shinyServer(function(input, output, session) {

  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    data_in[, c(input$xcol, input$ycol)]
  })

  #clusters <- reactive({
   # kmeans(selectedData(), input$clusters)
#  })

  output$plot1 <- renderPlot({
    par(mar = c(5.1, 4.1, 0, 1))
    plot(selectedData(),
         col = input$xcol,
         pch = 20, cex = 3)
    #points(, pch = 4, cex = 4, lwd = 4)
  })
  
})