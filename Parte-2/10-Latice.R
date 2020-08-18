# Lattice

# O pacote Lattice é um sistema de visualização de dados 
# de alto nível poderoso e elegante, com ênfase em dados 
# multivariados. 

# Na criação de gráficos, condições e agrupamentos são 2 conceitos
# importantes, que nos permitem compreender mais facilmente
# os dados que temos em mãos. O conceito por trás do Lattice
# é agrupar os dados e criar visualizaçãoes de forma que fique 
# mais fácil a busca por padrões

install.packages('lattice')
library(lattice)

xyplot(data = iris, groups = Species, Sepal.Length ~ Petal.Length)

# ScatterPlot 
splom(trees)


?Titanic

barchart(Class ~ Freq | Sex + Age, data = as.data.frame(Titanic),
         groups = Survived, stack = T, layout = c(4, 1),
         auto.key = list(title = "Dados Titanic", columns = 2))

barchart(Class ~ Freq | Sex + Age, data = as.data.frame(Titanic),
         groups = Survived, stack = T, layout = c(4, 1),
         auto.key = list(title = "Dados Titanic", columns = 2),
         scales = list(x = "free"))


x = equal.count(rivers)
x

PetalLength <- equal.count(iris$Petal.Length, 4)
PetalLength

xyplot(Sepal.Length~Sepal.Width | PetalLength, data=iris)


xyplot(Sepal.Length~Sepal.Width | PetalLength, data=iris,
       panel = function(...) {
         panel.grid(h = -1, v = -1, col.line="skyblue")
         panel.xyplot(...)})


xyplot(Sepal.Length~Sepal.Width | PetalLength, data=iris,
       panel = function(x,y,...) {
         panel.xyplot(x,y,...)
         mylm <- lm(y~x)
         panel.abline(mylm)})


histogram(~Sepal.Length | Species, xlab="",
          data=iris, layout=c(3,1), type="density",
          main="Lattice Histogram", sub="Iris Dataset, Sepal Length")



qqmath(~ Sepal.Length | Species, data = iris, distribution=qunif)


# Boxplot
bwplot(Species~Sepal.Length, data=iris)


# ViolinPlot
bwplot(Species~Sepal.Length, data=iris,
       panel = panel.violin)


par(mfrow=c(1,3))

cyls <- split(mtcars, mtcars$cyl)
for (ii in 1:length(cyls)) {
  tmpdf <- cyls[[ii]]
  sname <- names(cyls)[ii]
  plot(tmpdf$wt, tmpdf$mpg, 
       main = paste("MPG vs Wt",sname,"Cyl"),
       ylim = c(0,40), xlab = "Wt / 1,000",
       ylab = "MPG", pch=19, col="blue")
  grid()
}