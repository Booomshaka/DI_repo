library(RCurl)
x <- getURL("https://raw.githubusercontent.com/Booomshaka/DI_repo/master/data_in.csv?token=AMqPtIeLRa89DCLGBhxbCKCPnxjLBADnks5Vto7DwA%3D%3D")
data_in <- read.csv(text = x)
colnames(data_in) <- c("Hour", "Weekend Active Power (kw)", "Weekday Active Power (kw)")


shinyUI(pageWithSidebar(
  headerPanel('Diurnal House Power Parsed by Weekend/Weekday'),
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