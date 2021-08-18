load(file = "./dataCovid.RData")

library(datasets)

fluidPage(    
    
    titlePanel("covid19 por transmissao"),
    
    sidebarLayout(      
        
        sidebarPanel(
            selectInput("option", "Region:", 
                        choices=colnames(dataCovid)),
            selectInput("option2", "Region:", 
                        choices=colnames(dataCovid)),
            
            hr(),
            helpText("Data from WHO")
        ),
        
        mainPanel(
            plotOutput("phonePlot")  
        )
        
    )
)