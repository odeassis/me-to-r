# Pacotes e Instalação de Pacotes

# De onde vem as funções? Pacotes (conjuntos de funções)
# Quando você inicia o RStudio, alguns pacotes são 
# carregados por padrão

search()

install.packages(c('ggvis', 'tm', 'dplyr'))
library(ggvis)
library(tm)
require(dplyr) # Possibilita carregar pacotes dentro de funcoes

search()

?require
detach(package:dplyr) #Remove o pacote 
?attach # Anexa um dataset no ambiente de trabalho

ls(pos = "package:graphics") # Mostras as funcoes disponives em um pacote
ls(getNamespace('graphics'), all.names=T) # Mostra funcoes que existem dentro de funcoes em um determinado pacote

lsf.str('package:graphics') # Mostras os parametros/detalhes das funcoes existente em um pacote
lsf.str('package:ggplot2')
library(ggplot2)
lsf.str('package:ggplot2')

## R possui um conjunto de datasets preinstalados. Verificar datasets package

library(MASS)
data()