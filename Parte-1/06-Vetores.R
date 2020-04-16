## Vetores

# Vetor de caracteres
vetor_caracter = c('Ola', "Fran")
vetor_caracter

# Vetor de floats
vetor_numerico = c(1.89, 8.35, 10.5)
vetor_numerico

# Vetor de valores complexos
vetor_complexo = c(5.2+3i, 3.8+7i)
vetor_complexo

# Vetor de valores logicos
vetor_logico = c(TRUE, FALSE, TRUE, FALSE, FALSE)
vetor_logico

# Utilizando seq()
vetor1 = seq(1:10)
vetor1
is.vector(vetor1)

# Utilizando req()
vetor2 = req(1:5)
vetor2

# Indexacao de vetores
a <- c(1, 2, 3, 4, 5, 6)
a
a[1]
a[7]

b <- c("Data", "Science")
b
b[1]

# Combiando vetores
v1 = c(2, 3, 5)
v2 = c("aa", "bb", "cc")
c(v1, v2)

# Operacao com Vetores
x = c(1, 3, 5, 7)
y = c(2, 4, 6, 8)

x * 5
x + y
x - y
x * y
x / y

# Somando vetores com numero diferente de elementos
alfa =  c(10, 20, 30)
beta <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
alfa + beta

# Vetor Nomeado
v = c("Francisco", "Assis")
v
names(v) = c("Nome", "Sobrenome")
v
v["Nome"]
