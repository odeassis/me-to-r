# Time e Datas

# Hora e Data do sistema
hoje <- Sys.Date()
hoje
class(hoje)
Sys.time()
Sys.timezone()


# Data - representado por Date
# Armazenados como número de dias desde 1 de Janeiro de 1970

# Time - representado por POSIXct
# Armazenados como número de segundos desde 1 de Janeiro de 1970

# Formatando Datas
# %d: dia do mês em 2 dígitos (13)
# %m: mês em 2 digitos (01)
# %y: ano em 2 dígitos (82)
# %Y: ano em 4 dígitos (1982)
# %A: dia da semana (Friday)
# %a: dia da semana abreviado (Fri)
# %B: mês (July)
# %b: mês abreviado (Jul)


# Formatando Time
# %H: hora (00-23)
# %M: minuto
# %S: segundo
# %T: formado reduzido para %H:%M:%S
?strptime


# Formatando a saída - as.Date()
as.Date("2016-06-28")
as.Date("20160628434")
as.Date("Jun-28-16", format = "%b-%d-%y")
as.Date("28 June, 2016", format = "%d %B, %Y")


# Função format()
Sys.Date()
format(Sys.Date(), format = "%d %B, %Y")
format(Sys.Date(), format = "Hoje é %A!")


# Convertendo Datas - as.POSIXct
date1 <- "Jun 13, '96 hours:23 minutes:01 seconds:45"
date1_convert <- as.POSIXct(date1, format = "%B %d, '%y hours:%H minutes:%M seconds:%S")
date1_convert


# Operações com Datas
data_de_hoje <- as.Date("2016-06-25", format = "%Y-%m-%d")
data_de_hoje
data_de_hoje + 1

my_time <- as.POSIXct("2016-05-14 11:24:134")
my_time
my_time + 1

data_de_hoje - as.Date(my_time)
data_de_hoje - my_time


# Convertendo Data em formato específico
dts = c(1127056501,1104295502,1129233601,1113547501,1119826801,1132519502,1125298801,1113289201)
mydates = dts
class(mydates) = c('POSIXt','POSIXct')
mydates

mydates = structure(dts,class=c('POSIXt','POSIXct'))
mydates


# Função ISODate
b1 = ISOdate(2011,3,23)
b1
b2 = ISOdate(2012,9,19)
b2
b2 - b1

difftime(b2, b1, units='weeks')