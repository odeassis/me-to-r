## Tipos de Dados em R

# Numeric - Todos os numeros criados em R sao do tipo numerico
num = 2.5
num

num2 = 4
num2

x = -321
x
class(x)

# Conversao de tipos Numeric
is.interger(num2)
y = as.integer(num2)
class(y)

x2 = 3.14
x2

y2 = as.integer(3.14)
y2

# Converter String para Inteiro
as.integer('3.12')
as.integer('Fran')
as.integer("Fran")
as.integer(TRUE)

# Character
char1 = 'A'
char1

char2 = "Gado Demais"
char2

# Complex
compl = 2.5 + 4i
compl
class(compl)

# Raiz quadrada
sqrt(-1)
sqrt(-1+0i)
sqrt(as.complex(-1))

# Logic
x = 1; y = 2
z = x > y
z
class(z)

u = TRUE; v = FALSE
class(u)
u & v
u | v
!u

# Operadores com 0
5/0
0/5

# Erro
'joe'/5
