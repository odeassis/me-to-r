# Funções Especiais

# unlist()
# Produz um vetor com os elementos da lista
?unlist
lista_1 <- list(6, 'b', 15)
lista_1
class(lista_1)

unlist(lista_1)
vector_1 <- unlist(lista_1)
class(vector_1)
vector_1

lista_2 <- list(v1 = 6, v2 = list(381, 2190), v3 = c(30, 217))
lista_2

unlist(lista_2)

mean(unlist(lista_2))
round(mean(unlist(lista_2)))


# do.call()
# Executa uma função em um objeto
# *** ATENÇÃO ***
# As funções da família apply aplicam uma função a cada elemento de um objeto (substitui um loop)
# A função do.call aplica uma função ao objeto inteiro e não a cada elemento individualmente
?do.call

data <- list()
N <- 100

for (n in 1:N) {
  data[[n]] = data.frame(index = n, char = sample(letters, 1), z = rnorm(1))
}

head(data)

do.call(rbind, data)
class(do.call(rbind, data))

# lapply() x do.call()
y <- list(1:3, 4:6, 7:9)
y

lapply(y, sum)
do.call(sum, y)

# O resultado da função lapply() pode ser obtido de outras formas
# Pacote plyr

install.packages('plyr')
library(plyr)

y <- list(1:3, 4:6, 7:9)
y

?ldply

ldply(y, sum)

# Benchmark 
install.packages('rbenchmark')
library(rbenchmark)
benchmark(do.call(sum, y), ldply(y, sum))

N <- list(as.numeric(1:3000), as.numeric(4:60000), as.numeric(7:90000))

benchmark(do.call(sum, N), ldply(N, sum))

# strsplit()
# Divide uma string ou vetor de caracteres

texto <- "Essa he uma string"
strsplit(texto, " ")

texto <- "Essa he uma string"
strsplit(texto, "")

dates <- c("1999-05-23", "2001-12-30", "2004-12-17")
temp <- strsplit(dates, "-")
temp
class(temp)

matrix(unlist(temp), ncol = 3, byrow = T)

Names <- c('Brin, Sergey', 'Page, Larry',
          'Dorsey, Jack', 'Glass, Noah',
          'Williams, Evan', 'Stone, Biz')

Cofounded <- rep(c('Google', 'Twitter'), c(2,4))
temp <- strsplit(Names, ', ')
temp

frase <- "Muitas vezes temos que repetir algo diversas vezes e essas diversas vezes parecem algo estranho"
palavras <- strsplit(frase, ' ')[[1]]
palavras
unique(tolower(palavras))

antes = data.frame(attr = c(1, 30, 4, 6), tipo = c('pao_e_agua', 'pao_e_agua_2'))
antes
strsplit(as.character(antes$tipo), '_e_')

library(stringr)
str_split_fixed(antes$tipo, '_e_', 2)

depois <- strsplit(as.character(antes$tipo),  '_e_')
do.call(rbind, depois)

librasy(dplyr)
install.packages('tidyr')
library(tidyr)

antes <- data.frame(
  attr = c(1, 30 ,4 ,6 ), 
  tipo = c('pao_e_agua','pao_e_agua_2')
)

antes %>% separate(tipo, c('pao', 'agua'), '_e_')


# Operadores de atibuicao
vector_1 = 1:4
vector_2 <- 1:4

class(vector_1)
class(vector_2)

typeof(vector_1)
typeof(vector_2)

mean(x = 1:10)
x

mean(x <- 1:10)
x

# Criacao de Objetos
vector_1 = 1:4
vector_2 = c(1:4)
vector_3 = c(1,2,3,4)

vector_1
vector_2
vector_3

class(vector_1)
class(vector_2)
class(vector_3)
typeof(vector_1)
typeof(vector_2)
typeof(vector_3)

matriz_1 = matrix(1:4, nr = 2)
matriz_2 = matrix(c(1:4), nr = 2)
matriz_3 = matrix(c(1, 2, 3, 4), nr = 2)

class(matriz_1)
class(matriz_2)
class(matriz_3)
typeof(matriz_1)
typeof(matriz_2)
typeof(matriz_3)