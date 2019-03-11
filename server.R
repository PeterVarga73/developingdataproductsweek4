library(shiny)
shinyServer(function(input, output) {
 
 
  output$plot2<-renderPlot({
    xlabs<-c("Complaints","Privileges","Learning","Raises","Critical","Advancel")
    xvar <- switch(input$xvar,
                   com = 2,
                   pri = 3,
                   lea = 4,
                   rai = 5,
                   cri = 6,
                   adv = 7)    
    dataX<-attitude[,xvar]
    dataY<-attitude$rating
    
    plot(dataX,dataY,xlim = c(0, 100),ylim = c(0, 100),xlab=xlabs[xvar-1],ylab = "Rating")
  })
})