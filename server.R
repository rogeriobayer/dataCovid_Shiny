load(file = "./dataCovid.RData")

library(tidyverse)
library(ggplot2)

function(input, output) {
    output$graphicPlot <- renderPlot({
       if(input$switchSelection){
        agr <- aggregate(dataCovid[,input$option], by=list(y=dataCovid[,input$option2]), FUN=sum)
        ggplot(data, aes(x=dataCovid[,input$option], y=dataCovid[,input$option2])) +  geom_bar(stat = "identity")+ xlab(input$option) + ylab(input$option2)
        } else { 
                barplot(dataCovid[,input$option], 
                main=input$option,
                ylab=input$option,
                xlab=input$option2)
    }})
}