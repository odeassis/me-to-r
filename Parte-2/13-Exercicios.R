# Exercício 1 - Crie uma função que receba e vetores como parâmetro, 
# converta-os em um dataframe e imprima
number_vector <- c(1:5)
char_vector <- c('a', 'b', 'c', 'd', 'e')

convert_to_df <- function(vector_0, vector_1) {
  print(data.frame(vector_0, vector_1));
}

convert_to_df(number_vector, char_vector)

# Exercício 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com números
# inteiros e calcule a media de cada linha
matrix_4_4 <- matrix(c(1:16), ncol=4, nrow=4)
matrix_4_4 
apply(matrix_4_4, 1, mean) # Medias das linhas
apply(matrix_4_4, 2, mean) # Medias das colunas

# Exercício 3 - Considere o dataframe abaixo. Calcule a media por disciplina
escola <- data.frame( Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),
                      Matemática = c(90, 80, 85, 87, 56, 79),
                      Geografia = c(100, 78, 86, 90, 98, 67),
                      Química = c(76, 56, 89, 90, 100, 87))

escola$Media <- round(apply(escola[, c(2,3,4)], 1, mean))
escola
# Exercício 4 - Cria uma lista com 3 elementos, todos numéricos e calcule a soma
# de todos os elementos da lista
myFunction <- function(...) {
  vector <- round(runif(20, min=1, max=100))
  vector
}

number_1 <- myFunction()
number_2 <- myFunction()
number_3 <- myFunction()

number_list <- list(number_1, number_2, number_3)
number_list

lapply(number_list, sum)

# Exercício 5 - Transforme a lista anterior um vetor
number_vector <- unlist(number_list, use.names= FALSE)
number_vector

help('eapply')

# Exercício 6 - Considere a string abaixo. Substitua a palavra textos por frases
# str <- c("Expressoes", "regulares", "em linguagem R",
#          "permitem a busca de padroes", "e exploracao de textos",
#          "podemos buscar padroes em digitos",
#          "como por exemplo",
#          "10992451280")


# Exercício 7 - Usando o dataset mtcars, crie um gráfico com ggplot do tipo 
# scatter plot. Use as colunas disp e mpg nos eixos x e y respectivamente
head(mtcars)
attach(mtcars)
plot(disp, mpg,
      main="Scatterplot Example",
      xlab="Car Disp ",
      ylab="Miles Per Gallon ",
      pch=20,
      col="green"
)

# Exercício 8 - Usando o exemplo anterior, explore outros tipos de gráficos