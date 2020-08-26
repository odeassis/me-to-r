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


## Visualizando o relacionamento entre as variaveis preditoras e demanda por bike
labels <- c("Demanda de Bikes vs Temperatura",
            "Demanda de Bikes vs Humidade",
            "Demanda de Bikes vs Velocidade do Vento",
            "Demanda de Bikes vs Hora")

xAxis <- c("temp", "hum", "windspeed", "hr")

plot.scatter <- function(X, label){ 
  ggplot(bikes, aes_string(x = X, y = "cnt")) + 
    geom_point(aes_string(colour = "cnt"), alpha = 0.1) + 
    scale_colour_gradient(low = "green", high = "blue") + 
    geom_smooth(method = "loess") + 
    ggtitle(label) +
    theme(text = element_text(size = 20)) }

Map(plot.scatter, xAxis, labels)


## Explorando a interacao entre tempo e dia em dias da semana e fins de semana
labels <- list("Box plots - Demanda por Bikes as 09:00 para \n dias da semana e fins de semana",
               "Box plots - Demanda por Bikes as 18:00  para \n dias da semana e fins de semana")

Times <- list(9, 18)

plot.box2 <- function(time, label){ 
  ggplot(bikes[bikes$hr == time, ], 
         aes(x = isWorking, y = cnt, group = isWorking)) + 
    geom_boxplot( ) + ggtitle(label) +
    theme(text = element_text(size = 18)) }

Map(plot.box2, Times, labels)

## Gera saida no Azure ML
if(Azure) maml.mapOutputPort('bikes')


