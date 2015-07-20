shinyUI(pageWithSidebar(
  headerPanel('House Power By Hour and Weekend/Weekday'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(data_in)),
    selectInput('ycol', 'Y Variable', names(data_in),
                selected=names(data_in)[[2]])
    #numericInput('clusters', 'Cluster count', 3,
     #            min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1')
  )
))