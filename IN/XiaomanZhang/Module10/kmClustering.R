library(ISLR)
library(ggplot2)
print(head(iris))

pl <- ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()
#print(pl)
set.seed(101)
irisCluster <- kmeans(iris[,1:4],3, nstart = 20)
#print(irisCluster)

pl <- table(irisCluster$cluster, iris$Species)
#print(pl)
library(cluster)
clusplot(iris, irisCluster$cluster, colore = TRUE, shade = TRUE, lables = 0, lines = 0,)