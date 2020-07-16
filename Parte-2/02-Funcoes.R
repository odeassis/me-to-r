# Funcoes

# Help
?sample
args(sample)
args(mean)
args(sd)

# Funcoes Built-in
abs(-43)
sum(c(1:5))
mean(c(1:5))
round(c(1.1:5.8))
rev(1:5)
seq(5:1)
sort(rev(c(10:20)))
append(c(1:5), 6)

vector1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vector2 <- rev(vector1)
vector2

# Funcoes dentro de funcoes
plot(rnorm(10))
mean(c(abs(vector1), abs(vector2)))

# Criando funcoes
sum_func <- function(x){ x + x }
sum_func(10)
class(sum_func)

pow_func <- function(base, expo) {
  valor = base ^ expo
  print(valor)
}

pow_func(3,2)

game_die <- function(){
  num <- sample(1:6, size = 1) # Escopo Local
  num
}

game_die()

# Escopo
print(num)
num <- c(1:6)
num # Escopo Global

# Funcoes sem numero definido de argumentos
vector1 <- (10:13)
vector2 <- c("A", "B", "C", "D")
vector3 <- c(6.5, 9.2, 11.9, 5.1)


create_DataFrame <- function(...){
  dataframe = data.frame(cbind(...))
  print(dataframe)
}

create_DataFrame(vector1)
create_DataFrame(vector1, vector2)
create_DataFrame(vector1, vector2, vector3)
