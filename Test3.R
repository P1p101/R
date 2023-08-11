#install.packages("sqldf")
# Criar os grupos 
libraly(sqldf)
contabeis <- sqldf("SELECT idade FROM idades WHERE curso ='contabeis'")
software <- sqldf("SELECT idade FROM idades WHERE curso = 'software'" )

# Estatísticas descritivas (biblioteca)
library(FSA)
Summarize(contabeis$idade)
Summerize(software$idade)

# utilizando funções individuais
# Média
mediaSoftware <- mean(software$idade)
mediaContabeis <- mean(contabeis$idade)

# Mediana
medianaSoftware <- median(software$idade)
mediaContabeis <- meadian(contabeis$idade)

# Moda
frequenciaSoftware <- table(software$idade)
frequenciaContabeis <- table(software$idade)

modaSoftware <- as.numeric(names(frequenciaSoftware[frequenciaSoftware == max(frequenciaSoftware)]))
modaContabeis <- as.numeric(names(frequenciaContabeis[frequenciaContabeis == max(frequenciaContabeis)]))

# Amplitude
amplitudeSoftware <- max(software$idade) - min(software$idade)
amplitudeContabeis <- max(software$idade) - min(software$idade)

# Variância
varSoftware <- var(software$idade)
varContabeis <- var(contabeis$idade)

# Desvio padrão
sdSoftware <- sd(software$idade)
sdContabeis <- sd(contabeis$idade)

# Coeficiente de variação
cvSoftware <- (sdSoftware / mediaSoftware) * 100
cvContabeis <- (sdContabeis / mediaContabeis) * 100
