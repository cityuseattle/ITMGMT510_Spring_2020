library(ISLR)
library(ggplot2)

#print first 6 rows of the built-in iris data frame
print(head(iris))

#plot data to get an idea of what might expect when trying to cluster these species of flowers
pl <- ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()

print(pl)

#set a seed to get the same o/p as the HOP o/p
set.seed(101)

#K mean implementation
#next argument is how many clusters to expect which we expect three species so k=3
#the last argument is nstart which is a random number or the number of random start, so choose 20
irisCluster <- kmeans(iris[,1:4], 3, nstart = 20)
print(irisCluster)

pl <- table(irisCluster$cluster, iris$Species)

print(pl)

#Cluster Visualization
library(cluster)

#call clupllot which is from the cluster library, then we pass in the data
#and in this case we pass in our labeled data, so we can see the true point then
#we pass in our irisCluster$cluster argument then add some addition arg like color
clusplot(iris, irisCluster$cluster, color=TRUE, shade=TRUE, labels=0, lines=0,)