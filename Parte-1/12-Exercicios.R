# Exercicio 1 - Crie um vetor com 12 numeros inteiros
vec <- c(1:12)
vec

# Exercicio 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com numeros inteiros
mat <- matrix(c(1:16), nrow = 4, ncol = 4)
mat

# Exercicio 3 - Crie uma lista unindo o vetor e matriz criados anteriormente
lst <- list(vec, mat)
lst

# Exercicio 4 - Usando a funcao read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat
df <- data.frame(read.table("http://data.princeton.edu/wws509/datasets/effort.dat"))
class(df)
df

# Exercicio 5 - Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")
names(df) = c("col1", "col2", "col3")
df

# Exercicio 6 - Imprima na tela o dataframe iris, verifique quantas dimensoes existem no dataframe iris, imprima um resumo do dataset
iris
class(iris)
dim(iris)
summary(iris)
str(iris)

# Exercicio 7 - Crie um plot simples usando as duas primeiras colunas do dataframe iris
plot(iris$Sepal.Length, iris$Sepal.Width)

# Exercicio 8 - Usando s função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a funcao subset()
?subset
iris1 <- subset(iris, Sepal.Length > 7)
iris1

# Exercicio 9 - Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: voce vai ter que instalar e carregar o pacote dplyr
# Dica 2: Consulte o help para aprender como usar a funcao slice()
novo_iris <- iris
novo_iris
install.packages("dplyr")
library(dplyr)
?slice
slice(novo_iris, 1:15)

# Exercicio 10 - Use a funcao filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: Use o RSiteSearch para aprender como usar a funcao filter
RSiteSearch('filter')
filter(novo_iris, Sepal.Length > 7)
