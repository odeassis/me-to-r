# Bancos de Dados

# Instalar SQLite
install.packages("RSQLite")
library(RSQLite)

# Remover o banco SQLite, caso exista - Não é obrigatório
# system("del exemplo.db")
system("rm exemplo.db")

# Criando driver e conexão ao banco de dados
drv = dbDriver("SQLite")
con = dbConnect(drv, dbname = "exemplo.db")
dbListTables(con)

# Criando uma tabela e carregando com dados do dataset mtcars
dbWriteTable(con, "mtcars", mtcars)

# Listando uma tabela
dbListTables(con)
dbExistsTable(con,"mtcars")
dbExistsTable(con,"mtcars2")
dbListFields(con,"mtcars")

# Lendo o conteúdo da tabela
dbReadTable(con, "mtcars")

# Criando apenas a definição da tabela.
dbWriteTable(con, "mtcars2", mtcars[0, ])
dbListTables(con)
dbReadTable(con, "mtcars2")

# Executando consultas no banco de dados
query = "select row_names from mtcars"
rs = dbSendQuery(con, query)
dados = fetch(rs, n = -1)
dados
class(dados)

# Executando consultas no banco de dados
query = "select row_names from mtcars"
rs = dbSendQuery(con, query)
while (!dbHasCompleted(rs))
{
  dados = fetch(rs, n = 1)
  print(dados$row_names)
}

# Executando consultas no banco de dados
query = "select disp, hp from mtcars where disp > 160"
rs = dbSendQuery(con, query)
dados = fetch(rs, n = -1)
dados

# Executando consultas no banco de dados
query = "select row_names, avg(hp) from mtcars group by row_names"
rs = dbSendQuery(con, query)
dados = fetch(rs, n = -1)
dados

# Criando uma tabela a partir de um arquivo
dbWriteTable(con, "tempo", "tempo.txt", sep = ",", header = T)
dbListTables(con)
dbReadTable(con, "tempo")

# Encerrando a conexão
dbDisconnect(con)

# Carregando dados no banco de dados
# http://dados.gov.br/dataset/indice-nacional-de-precos-ao-consumidor-amplo-15-ipca-15
# Criando driver e conexão ao banco de dados
drv = dbDriver("SQLite")
con = dbConnect(drv, dbname = "exemplo.db")

dbWriteTable(con,"indices", "indice.csv",
              sep = "|", header = T)

dbRemoveTable(con, "indices")

dbWriteTable(con,"indices", "indice.csv",
             sep = "|", header = T)

dbListTables(con)
dbReadTable(con, "indices")

df <- dbReadTable(con, "indices")
df
str(df)
sapply(df, class)

hist(df$agosto)
df_mean <- unlist(lapply(df[, c(4, 5, 6, 7, 8)], mean))
df_mean

dbDisconnect(con)











