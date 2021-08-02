#Definindo a pasta de trabalho
setwd("C:/Users/will/Downloads")
getwd()

?read.table
dados <- read.table("Usuarios.csv",
                    dec = ".",
                    sep = ",",
                    h = T,
                    fileEncoding = "windows-1252")

#Visualizacao e sumarizacao de dados
View(dados)
names(dados)
str(dados)
summary(dados$salario)
summary(dados$grau_instrucao)
mean(dados$salario)
mean(dados$grau_instrucao)

#tabela de frequencia absolutas
freq <- table(dados$grau_instrucao)
View(freq)

#Tabela frequancia relativa
freq_rel <- prop.table(freq)
View(freq_rel)

#Tabela frequancia relativa
#Porcentagem (100 * freq_rel_table)
p_freq_rel <- 100 * prop.table(freq_rel)
View(p_freq_rel)

#adiciona linhas de total
View(freq)
freq <- c(freq, sum(freq))
names(freq)[4] <- "Tatal"
View(freq)

# Tabela final com todos os valores
#Calculando frequencia relativa e frequencia proporcional
freq_rel <- c(freq_rel, sum(freq_rel))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))

#Tabela final com todos os vetores
tabela_final <- cbind(freq,
                      freq_rel = round(freq_rel, digits = 2),
                      p_freq_rel = round(p_freq_rel, digits = 2))

View(tabela_final)

