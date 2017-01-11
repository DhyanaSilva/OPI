matriz<-read.csv("C:/Users/Luis/Google Drive/Opi/bicis/Libro1.csv",row.names=1)
matriz<-as.matrix(matriz)
matriz<-cor(matriz)
hc<-hclust(dist(matriz),"ave")
plot(hc,cex=.1)
clusters<-cutree(hc,4)


datosEstaciones<-fromJSON("C:/Users/Luis/Downloads/estaciones.json",flatten=TRUE)
colnames(datosEstaciones)