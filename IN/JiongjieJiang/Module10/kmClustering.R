library(ISLR)
library(ggplot2)

#Print first 6 rows of the built in iris data frame
print(head(iris))

#Let's plot our data to get an idea of what we might expect when we trying
#to cluster there species of flowers
pl <- ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()

print(pl)

#Since kmean clustring randomly starts the centroid &
#randomly assigns points.
#So, in order to get the same clusters, we will
#set a seed to get the same o/p as the HOP o/p
set.seed(101)

#K mean implementation
#In the kmean we will pass first our data and remember since this is an unsupervised
#learning algorithm, your data will not have a label
#That means we want tp pass only first 4 colms
#Next argument is how many clusters to random number or
#the number of random start, so we choose 20
irisCluster <- kmeans(iris[, 1:4], 3, nstart = 20)
print(irisCluster)

#to evaluate how well our clustering algorithm performed,
#we can check it against the actual labels that we know to be true
pl <- table(irisCluster$cluster, iris$Species)

print(pl)

#Cluster Visualization
library(cluster)

#Call clupllot which is from the cluster library, then we pass in the data
#and in this case we pass in our labeled data so we can see the true points then
#We pass in our irisCluster$cluster argument then add some addition arg like color
clusplot(iris, irisCluster$cluster, color=TRUE, shade=TRUE, labels=0, lines=0, )