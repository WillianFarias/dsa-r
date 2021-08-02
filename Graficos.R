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