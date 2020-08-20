# R e MongoDB

# Criando uma coleçaõ no MongoDB (abrir o prompt e navegar até o diretório bin dentro do diretório de instalação do mongoDB e executar na linha de comando)
# ./mongoimport --db users --collection contatos --file /opt/DSA/RFundamentos/Parte3/zips.json

# O pacote rmongodb foi descontinuado e não receberá mais atualização. Quando isso acontece, o pacote fica disponível no 
# Archive do CRAN. O pacote ainda pode ser utilizado normalmente, mas precisa fazer o download do arquivo e instalar em sua máquina. 
# O link para o download está aqui: https://cran.r-project.org/src/contrib/Archive/rmongodb/. 
# O comando para instalar o pacote é install.packages("nome_completo_do_pacote", repos = NULL, type = "source"). 
# Coloque o pacote no mesmo diretório de trabalho da sua sessão no RStudio. 
# O pacote pode ser usado normalmente, embora não seja mais atualizado pelo criador do pacote.


# RMongo
# RMongoDB
# InstalaÃ§Ã£o do Pacote
# install.packages("rmongodb")
install.packages("nome_completo_do_pacote", repos = NULL, type = "source")
library(rmongodb)

# Criando a conexÃ£o
help("mongo.create")
mongo <- mongo.create()
mongo

# Checando a conexÃ£o
mongo.is.connected(mongo)

if(mongo.is.connected(mongo) == TRUE) {
  mongo.get.databases(mongo)
}

# Armazenando o nome de uma das coleÃ§Ãµes
coll <- "users.contatos"

# Contando os registros em uma coleÃ§Ã£o
help("mongo.count")
mongo.count(mongo, coll)

# Buscando um registro em uma coleÃ§Ã£o
mongo.find.one(mongo, coll)

# Obtendo um vetor de valores distintos das chaves de uma coleÃ§Ã£o
res <- mongo.distinct(mongo, coll, "city")
head(res)

# Obtendo um vetor de valores distintos das chaves de uma coleÃ§Ã£o
# E gerando um histograma
pop <- mongo.distinct(mongo, coll, "pop")
hist(pop)

# Contando os elementos
nr <- mongo.count(mongo, coll, list('pop' = list('$lte' = 2)))
print( nr )

# Buscando todos os elementos
pops <- mongo.find.all(mongo, coll, list('pop' = list('$lte' = 2)))
head(pops, 2)

# Encerrando a conexÃ£o
mongo.destroy(mongo)

# Criando e validando um arquivo json
library(jsonlite)
json_arquivo <- '{"pop":{"$lte":2}, "pop":{"$gte":1}}'
cat(prettify(json_arquivo))

validate(json_arquivo)















