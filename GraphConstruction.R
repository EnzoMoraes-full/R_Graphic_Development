#Grafico, visualizacao e dashboard.

dados = read.csv("R scripts/Ex3GrafDashVisu/dados.csv", sep = ";")
head(dados)

summary(dados$VALOREMPENHO)
summary(dados$PIB)


dados$PROPORCAO =   dados$VALOREMPENHO  / dados$PIB 
Mprop = dados[order(-dados$PROPORCAO), ][1:10, ]
barplot(Mprop$PROPORCAO,col=gray.colors(10), las=2,main = "Maiores Gastos em Proporção ao PIB")
legend("topright",legend=Mprop$MUNICIPIO,col = gray.colors(10), lty=1, cex=0.7, ncol = 2,lwd=6)
box()