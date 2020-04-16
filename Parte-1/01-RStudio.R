# Explorando o 01-RStudio.R

# Nome dos Contribuidores
contributors()

# Licenca
licence()

#Informacoes sobre a sessao
sessionInfo()

# Imprimir da tela
print('R - Respeita o rato caraiii!!')

# Criar Graficos
plot(1:30)
hist(rnorm(10))

# Instalacao de pacotes
install.packages('randomForest')
install.packages('ggplot2')

# Carregar o pacote
library(ggplot2)

# Descarregar o pacote
detach(package:ggplot2)

# Ver detalhes das funcoes
## Se souber o nome da funcao
help(mean)
?mean

## Se nao souber o nome da funcao
help.search('randomForest')
help.search('matplot')
??matplot
RSiteSearch('matplot')
example('matplot')