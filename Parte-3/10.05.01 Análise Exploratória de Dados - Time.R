# Este codigo foi criado para executar tanto no Azure, quanto no RStudio.
# Para executar no Azure, altere o valor da variavel Azure para TRUE. Se o valor for FALSE, o codigo sera executado no RStudio

# Configuracao do diretorio de trabalho
# setwd("/opt/DSA/MachineLearning/Azure/Regressao")

# Variavel que controla a execucao do script
Azure <- FALSE

if(Azure){
  source("src/Tools.R")
  Bikes <- maml.mapInputPort(1)
  Bikes$dteday <- set.asPOSIXct(Bikes)
}else{
  bikes <- bikes
}

## Avaliando a demanda por aluguel de bikes ao longo do tempo
## Construindo um time series plot para alguns determinados horarios em dias uteis e dias de fim de semana
times <- c(7, 9, 12, 15, 18, 20, 22) 

tms.plot <- function(times){
  ggplot(bikes[bikes$workTime == times, ], 
         aes(x = dteday, y = cnt)) +
    geom_line() +
    ylab("Numero de Bikes") +
    labs(title = paste("Demanda de Bikes as ",
                       as.character(times), ":00", sep = "")) +
    theme(text = element_text(size = 20))
}

require(ggplot2)
lapply(times, tms.plot)

## Gera saida no Azure ML
if(Azure) maml.mapOutputPort('bikes')


