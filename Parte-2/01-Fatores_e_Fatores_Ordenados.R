# Fatores

vector1 <- c("Masculino", "Femenino", "Femenino", "Masculino", "Femenino")
vector1
factor_vector1 <- factor(vector1);
factor_vector1
class(vector1)
class(factor_vector1)

# Variaveis categoricas nominais
# Nao existe uma ordem implicita
animals <- c("Cabra", "Bode", "Vaca", "Elefante", "Macaco", "Cobra", "Crocodilo", "Jaguatirica")
animals
class(animals)
factor_animals <- factor(animals)
factor_animals
class(factor_animals)
levels(factor_animals)
summary(factor_animals)

# Variaveis categoricas ordinais
# Possuem uma ordem natural
university_graduate <- c("Mestrado", "Doutorado", "Mestrado", "Mestrado", "Bacharelado")
university_graduate
university_graduate_levels <- c("Doutorado", "Mestrado", "Bacharelado")
factor_university_graduate <- factor(university_graduate, order = TRUE, levels = university_graduate_levels)
factor_university_graduate
levels(factor_university_graduate)

# Sumarizar os dados fornece uma visao geral sobre o conteudo das variaveis
summary(factor_university_graduate)

vector2 <- c("M", "F", "F", "M", "M", "M", "F", "F", "M", "M", "M", "F", "F", "M", "M")
vector2
factor_vector2 <- factor(vector2)
factor_vector2
levels(factor_vector2) <- c("Femenino", "Masculino")
summary(factor_vector2)

# Outros exemplos
data = c(1,1,2,3,3,2,2,1,2,3,1,2,1,1,3,3,2,1,3,2,1,2)
factor_data = factor(data)
factor_data

labels_data = factor(data, labels = c("I", "II", "II"))
labels_data

# Fatores Nao-Ordenados
set1 <- c("AA", "B", "BA", "CC", "CA", "AA", "BA", "CC", "CC")
set1

# Transformando os dados. O R apenas criou os niveis, o que nao significa que exista uma hierarquia
factor_set1 <- factor(set1)
factor_set1
class(factor_set1)
is.ordered(factor_set1)

# Fatores ordenados
ordered_factor_set1 <- factor(set1, levels = c("CA", "BA", "AA", "CC", "B"), ordered = TRUE)
ordered_factor_set1

is.ordered(ordered_factor_set1)
as.numeric(ordered_factor_set1)
table(ordered_factor_set1)

# Fatores e Dataframes
dataframe_etnias = read.csv("datasets/etnias.csv", sep = ',')
dataframe_etnias

# Variaveis do tipo fator
str(dataframe_etnias)

# Niveis dos fatores
# Internamente, o R armazena valores inteiros e faz um mapeamento para...
# [...] as strings (em ordem alfabetica) e agrupa as estatisticas por niveis.
# Se fizemos a sumarizacao de estatisticas, he posssivel visualizar...
# [...] a contabilizacao de para cada categoria.

dataframe_etnias$Etnia <- factor(dataframe_etnias$Etnia)

levels(dataframe_etnias$Etnia)
summary((dataframe_etnias$Etnia))

# Plot
# Agora se fizermos um plot, temos um boxplot para estas variaveis categoricas
plot(dataframe_etnias$Idade~dataframe_etnias$Etnia, xlab = 'Etnia', ylab = 'Idade', main = 'Idade por Etnia')

# Regressao
summary(lm(Idade~Etnia, data=dataframe_etnias))

# Convertendo uma coluna em variaveis categorica. Isso criara um fator nao-ordenado
dataframe_etnias
str(dataframe_etnias)
dataframe_etnias$Estado_Civil.cat <- factor(dataframe_etnias$Estado_Civil, labels = c("Solteiro", "Casado", "Divorviado"))
dataframe_etnias
str(dataframe_etnias)

# Compreendendo a ordem dos fatores

# Níveis dos fatores
# Internamente, o R armazena valores inteiros e faz um mapeamento para as strings (em ordem alfabética)
# e agrupa as estatísticas por níveis.

# Criando Vetores
vector1 <- c(1001, 1002, 1003, 1004, 1005)
vector2 <- c(0,1,1,0,2)
vector3 <- c("Verde", "Laranja", "Azul", "Laranja", "Verde")

# Unindo os vetores em um dataframe
dataframe_vectors <- data.frame(vector1, vector2, vector3)
dataframe_vectors

# Verificando que o R categorizou a utima coluna como factor
str(dataframe_vectors)

# Verificando os niveis do factor. perceba que os niveis estao...
# [...] categorizados em ordem alfavetica
levels(dataframe_vectors$vector3)

# Criando uma outra coluna e abribuindo labels
dataframe_vectors$categoria1 <- factor(dataframe_vectors$vector3, labels = c("cor2", "cor1", "cor3"))
dataframe_vectors

# Internamente, os fatores sao registrados como inteiros, mas a ordenacao segue a ordem alfabetica
# as strings
str(dataframe_vectors)

# Veja como foi feita a atribuicao:
# Azul = cor2
# Laranja = cor1
# Verde = cor3
# Ou seja, os vetores com os labels, seguiram a ordem  alfabetica dos niveis classificados pelo R

# Criando uma outra coluna e atribuindo labels
# Ao aplicarmos a funcao factor() a coluna vector2, internamente o R classicou em ordem alfabetica
# e quando atribuimos os labels, foi feita a associacao.
dataframe_vectors$categoria2 <- factor(dataframe_vectors$vector2, labels = c("Divorciado", "Casado", "Solteiro"))
dataframe_vectors
str(dataframe_vectors)
levels(dataframe_vectors$categoria2)