load(file = "./dataCovid.RData")

library(datasets)
library(shinyWidgets)

fluidPage(    
    
    titlePanel("Shiny Covid19"),
    
    sidebarLayout(      
        
        sidebarPanel(
            selectInput("option", "Eixo X da Tabela:", 
                        choices=colnames(dataCovid)),
            selectInput("option2", "Eixo Y da Tabela:", 
                        choices=colnames(dataCovid)),
            
            helpText("Escolha a biblioteca de graficos"),
            
            switchInput(inputId = "switchSelection", label = "graficos", onLabel= "ggplot", offLabel="barplot" ),
            
            hr(),
            helpText("Dados provenientes da OMS"),
        ),
        
        mainPanel(
            plotOutput("graphicPlot")  
        )
        
    )
)