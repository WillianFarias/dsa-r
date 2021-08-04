#Definindo a pasta de trabalho
setwd("C:/Users/will/Downloads")
getwd()

#Dados
vetor_total_resultados = c(3, 12, 5, 18, 45)
names(vetor_total_resultados) = c("A", "B", "C", "D", "E")
vetor_total_resultados

#barplot
?barplot
barplot(vetor_total_resultados)
#parametro col passa as cores das barras
barplot(vetor_total_resultados, col = c(1, 2, 3, 4, 5))

#Salvando o grafico em disco
png("barplot.png", width = 480, height = 480)
barplot(vetor_total_resultados,
        col = rgb(0.5, 0.1, 0.6, 0.6),
        xlab = "Categorias",
        ylab = "valores",
        main = "Barplot em R",
        ylim = c(0,60))
dev.off()

install.packages("ggplot2")
#Ggplot2
library(ggplot2)
View(mtcars)

# Barplot
ggplot(mtcars, aes(x = as.factor(cyl) )) +
  geom_bar()

ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl) )) +
  geom_bar( ) +
  scale_fill_manual(values = c("red", "green", "blue"))
  #scale_fill_manual(values = c("A ", "B ", "C ", "D "), value = c(33, 62, 56, 67))

#criando dados dummy(fictícios)
dados = data.frame(group = c("A", "B", "C ", "D "), value = c(33,62,56,67))
View(dados)

#Barplot
ggplot(dados, aes(x = group, y = value, fill = group)) + 
  geom_bar(width = 0.85, stat = "identity")

#Pie Chart - Gráfico de pizza
fatias <- c(4,12,14,16,8)
paises <- c("Brasil", "Estados Unidos", "Alemanha", "Reino Unido", "Espanha")
?pie
pie(fatias, labels = paises, main = "Leitura de Livros Por Pessoa/Ano")

#Pie chart 3d
install.packages("plotrix")
library(plotrix)

fatias <- c(4,12,14,16,8)
paises <- c("Brasil", "Estados Unidos", "Alemanha", "Reino Unido", "Espanha")
?pie3D
pie3D(fatias, labels = paises, explode = 0.1, main = "Leitura de Livros Por Pessoa/Ano")

#Line Chart - gráficos de linha
#Dados
carros <- c(1, 3, 6, 4, 9)
caminhoes <- c(2, 5, 4, 5, 12)

#Plot
plot(carros, type="o", col = "blue", ylim= c(0,12))

lines(caminhoes, type = "o", pch = 22, lty = 2, col = "red")

title(main = "Produção de Veículos", col.main = "red", font.main = 4)

#Plot
View(mpg) #dados default
ggplot(mpg, aes(x = reorder(class, hwy), y = hwy, fill = class)) +
  geom_boxplot() + 
  xlab("class") +
  theme(legend.position = "none")

####Scatter Plot #####
##gráfico bi dimensional, analisa mais de uma variavel
#library(ggplot2)
data = data.frame(cond = rep(c("condition_1", "condition_2"), each=10),
                  my_x = 1:100 + rnorm(100, sd=9), my_y = 1:100 + rnorm(100,sd=16))

View(data)
ggplot(data, aes(x=my_x, y=my_y))+
  geom_point(shape=1)