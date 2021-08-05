#Definindo pasta trabalho
setwd("C:/Users/Will/Documents/dsa")
getwd()

#Carregando dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

#Carrega ddplot2
library(ggplot2)

#Criando gráfico
?ggplot
ggplot(Valor, Custo, data = vendas)