# A família apply - uma forma elegante de fazer loops

#  apply() - arrays e matrizes
# tapply() - os vetores podem ser divididos em diferentes subsets
# lapply() - vetores e listas
# sapply() - versão amigável da lapply
# vapply() - similar a sapply, com valor de retorno modificado
# rapply() - similar a lapply()
# eapply() - gera uma lista
# mapply() - similar a sapply, multivariada
# by

# Se você estiver trabalhando com os objetos: 

# list, numeric, character (list/vecor) => sapply ou lapply
# matrix, data.frame (agregação por coluna) => by / tapply
# Operações por linha ou operações específicas => apply

# Calculando cada elemento da lista com sapply
linsta_num <- list(a = (1:10), b =(45:77))
?sapply
sapply(linsta_num, sum)

# Aplicando funcoes com sapply
sapply(linsta_num, mean)

# apply()
?apply

matriz_x <- matrix(rnorm(9), nr=3, byrow = T)
matriz_x
apply(matriz_x, 1, mean)
apply(matriz_x, 2, mean)
apply(matriz_x, 1, plot)

resultado_apply <- apply(matriz_x, 1, mean)
resultado_apply

escola <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),
                    Matematica = c(90, 80, 85, 87, 56, 79),
                    Geografia = c(100, 78, 86, 90, 98, 67),
                    Quimica = c(76, 56, 89, 90, 100, 87))

escola
escola$Geografia

# Calculando a media por aluno
escola$Media = NA
escola

# escola[, c(2, 3, 4)]

escola$Media = apply(escola[, c(2, 3, 4)], 1, mean)
escola
escola$Media = round(escola$Media)
escola

# tapply() vs sqldf
install.packages('sqldf')
require(sqldf)

escola2 <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),
                    Matematica = c(90, 80, 85, 87, 56, 79),
                    Geografia = c(100, 78, 86, 90, 98, 67),
                    Quimica = c(76, 56, 89, 90, 100, 87))

escola2

sqldf('select aluno, sum(Matematica), sum(Geografia), sum(Quimica) 
        from escola2 group by aluno')
tapply(c(escola2$Matematica), escola2$Aluno, sum)

# by
?by

sqldf('select aluno, sum(Matematica), sum(Geografia), sum(Quimica) 
        from escola2 group by semestre')
by(escola2[, c(2, 3, 4)], escola2$Semestre, colSums)

# lapply()
?lapply

lista_num <- list(a = (1:10), b = (45:77))
lista_num

lapply(lista_num, sum)
sapply(lista_num, sum)

# vapply()
?vapply

vapply(lista_num, fivenum, c(Min. = 0, '1stQu.' = 0, Median = 0, '3rd Qu.' = 0, Max = 0))

# replicate
?replicate
?runif
replicate(7, runif(7))

# mapply()
?mapply
mapply(rep, 1:4, 4:1)

# rapply()
?rapply

lista_num_2 <- list(a = c(1:5), b = c(6:10))
lista_num_2

rapply(lista_num_2, sum)
rapply(lista_num_2, sum, how = 'list')
