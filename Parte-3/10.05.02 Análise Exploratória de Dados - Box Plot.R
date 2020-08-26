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

## Convertendo a variavel dayWeek para fator ordenado e plotando em ordem de tempo
bikes$dayWeek <- fact.conv(bikes$dayWeek)

## Demanda de bikes x potenciais variaveis preditoras
labels <- list("Boxplots - Demanda de Bikes por Hora",
               "Boxplots - Demanda de Bikes por Estação",
               "Boxplots - Demanda de Bikes por Dia Útil",
               "Boxplots - Demanda de Bikes por Dia da Semana")

xAxis <- list("hr", "weathersit", "isWorking", "dayWeek")

plot.boxes  <- function(X, label){ 
  ggplot(bikes, aes_string(x = X, 
                               y = "cnt", 
                               group = X)) + 
    geom_boxplot( ) + ggtitle(label) +
    theme(text = element_text(size = 18)) }

Map(plot.boxes, xAxis, labels)



## Gera saida no Azure ML
if(Azure) maml.mapOutputPort('bikes')


