load(file = "./dataCovid.RData")

library(datasets)

# Define a server for the Shiny app
function(input, output) {
    
    # Fill in the spot we created for a plot
    output$phonePlot <- renderPlot({
        
        library(tidyverse)
        library(ggplot2)
        
        agr <- aggregate(dataCovid[,input$option], by=list(y=dataCovid[,input$option2]), FUN=sum)
        library(ggplot2)
        
        data <- data.frame(
            TipoDeTransmissao=dataCovid[,input$option],  
            CasosNosUltimos7Dias=dataCovid[,input$option2]
        )
        
        ggplot(data, aes(x=dataCovid[,input$option], y=dataCovid[,input$option2])) +  geom_bar(stat = "identity")+ xlab(input$option) + ylab(input$option2)
        # Render a barplot
    
    })
}