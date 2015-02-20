# server.R
library(kernlab)
data(spam)
shinyServer(function(input, output) {
    
    output$text1 <- renderText({ 
      paste("You have selected the word:  ", input$var)
    })
      output$distPlot <- renderPlot({
      data1 <- spam[spam$type=='nonspam',]
      data2 <- spam[spam$type=='spam',]
      plot(density(data1[,input$var]), col='blue', main='', xlab="Frecuency")
      lines(density(data2[,input$var]), col='red')
      })
      }
)