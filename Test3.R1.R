install.packages('FSA')
library(readx1)
library(sqldf) 
library(FSA)

caminho_arquivo <- ('"C:\Users\pietr\OneDrive\Documentos\pastinha\idades.xlsx"')
idade <- read_excel(caminho_arquivo, sheet='comparacao')
idades <- read_excel(caminho_arquivo, sheet='comparacao')
software <- sqldf("SELECT idade FROM idades WHERE curso = 'software'")
contabeis <- sqldf("SELECT idade FROM idades WHERE curso = 'contabeis'")

tabela_contabeis <-t(as.data.frame(Summarize(software$idade)))
tabela_contabeis

tabela_software <-t(as.data.frame(Summarize(software$idade)))
tabela_software

# Moda
frequenciaContabeis <- table(contabeis$idade)
frequenciaSoftware <- table(software$idade)

as.numeric(names(frequenciaContabeis[frequenciaContabeis == max(frequenciaContabeis)]))
as.numeric(names(frequenciaSoftware[frequenciaSoftware == max(frequenciaSoftware)]))


cvContabeis <- (sd(contabeis$idade)/mean(contabeis$idade)) * 100
cvSoftware <- (sd(software$idade)/mean(software$idade)) * 100
