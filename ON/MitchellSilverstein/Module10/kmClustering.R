library(ISLR)
library(ggplot2)

#print first 6 rows of the built in iris data frame
print(head(iris))

#Plot the data to get an idea of what we might expect
#to cluster these species of flowers
pl<- ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()

set.seed(101)

irisCluster <- kmeans(iris[, 1:4], 3, nstart =20)
print(irisCluster)

#Evaluate how well our clustering algorithm performed,
#We can check it against the actual labels that we know to be true
pl <- table(irisCluster$cluster, iris$Species)

print(pl)

#cluster Visualization
library(cluster)

clusplot(iris, irisCluster$cluster, color=TRUE, shade=TRUE, labels=0, lines=0, )