# MySQL

install.packages('RMySQL')
library(RMySQL)
library(ggplot2)
library(dplyr)


# Conexão com o banco de dados
con = dbConnect(MySQL(), user = "daniel", password = "dsa1234", dbname = "titanicDB", host = "localhost")

# Query
qry <- "select pclass, survived, avg(age) as media_idade from titanic where survived = 1 group by pclass, survived;"
dbGetQuery(con, qry)

# Plotar
dados <- dbGetQuery(con, qry)
head(dados)
class(dados)
ggplot(dados, aes(pclass, media_idade)) + geom_bar(stat = "identity")

# Conectando no MySQL com dplyr
con2 <- src_mysql(dbname = "titanicDB", user = "daniel", password = "dsa1234", host = "localhost")

dados2 <- con2 %>%
  tbl("titanic") %>%
  select(pclass, sex, age, survived, fare) %>%
  filter(survived == 0) %>%
  collect()

head(dados2)

# Manipulando dados
dados2 <- con2 %>%
  tbl("titanic") %>%
  select(pclass, sex, survived) %>%
  group_by(pclass, sex) %>%
  summarise(survival_ratio = mean(survived)) %>%
  collect() 

ggplot(dados2, aes(pclass,survival_ratio, color=sex, group=sex)) +
  geom_point(size=3) + geom_line()

# Sumarizando os dados
dados2 <- con2 %>%
  tbl("titanic") %>% 
  filter(fare > 150) %>%
  select(pclass,sex,age,fare) %>%
  group_by(pclass,sex) %>% 
  summarise(avg_age = mean(age),
            avg_fare = mean(fare))

head(dados2)


# --> Para outros bancos de dados, use RODBC






