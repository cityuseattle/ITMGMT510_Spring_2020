library(ISLR)
library(ggplot2)



print(head(iris))

pl <- ggplot(iris, aes(Petal.Length, Petal.Width, color= Species)) + geom_point()

set.seed(101)
irisCluster <-kmeans(iris[,1:4], 3, nstart =20)



print(irisCluster)

pl <- table(irisCluster$cluster, iris$Species)

print(pl)

library(cluster)

clusplot(iris, irisCluster$cluster, color=TRUE, labels=0, lines=0)