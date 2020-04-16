# Crinado Variaveis

var1 = 367
var1
mode(var1)
help('mode')
sqrt(var1)

var2 = as.integer(var1)
var2
mode(var2)
typeof(var2)
help('typeof')

var3 = c('seg', 'ter', 'qua')
var3
mode(var3)

var4 = function(x) {x+3}
var4
mode(var4)

# Podemos tambem mudar o modo do dado

var5 = as.character(var1)
var5
mode(var5)

## Atribuindo valores a objetos
x <- c(4,5,6)
x
c(4,5,6) -> y
y
assign('x', c(1.3,4,-2))

## Verificando o valor em uma posicao especifica
x[1]

## Verificar objetos
ls()
objects()

## Remover objetos
rm(x)
x
