library(ISLR)
library(ggplot2)

#print first 6 rows of the built in iris data frame
print(head(iris))


pl <- ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()


set.seed(101)

irisCluster <- kmeans(iris[, 1:4], 3, nstart = 20)
print(irisCluster)


pl <- table(irisCluster$cluster, iris$Species)

print(pl)

library(cluster)

clusplot(iris, irisCluster$cluster, color=TRUE, shade=TRUE, labels=0, lines=0, )