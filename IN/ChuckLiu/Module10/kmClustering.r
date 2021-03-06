library(ISLR);
library(ggplot2);

#print first 6 rows of the built-in iris data 
print(head(iris));

#lets our data to get an idea of what we might expect when we trying 
#to cluster these species of flowers
pl <- ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point();

#print(pl);

set.seed(101);

irisCluster <- kmeans(iris[, 1 : 4], 3, nstart = 20);
print(irisCluster);

#Evaluate how well our clustering algorithm performed
pl <- table(irisCluster$cluster, iris$Species);

print(pl);

library(cluster);

clusplot(iris, irisCluster$cluster, color = TRUE, shade = TRUE, labels = 0, lines = 0, );