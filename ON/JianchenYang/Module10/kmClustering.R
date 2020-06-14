library(ISLR)
library(ggplot2)

print(head(iris))

pl <- ggplot(iris, aes(Petal.Length,Petal.Width,color = Species)) + geom_point()

#print(pl)

set.seed(10)

irisCluster <- kmeans(iris[,1:4],3,nstart = 20)

pl <- table(irisCluster$cluster,iris$Species)

print(pl)

#Cluster Visualization
library(cluster)

clusplot(iris,irisCluster$cluster,color=TRUE,shade=TRUE,labels=0,lines=0,)