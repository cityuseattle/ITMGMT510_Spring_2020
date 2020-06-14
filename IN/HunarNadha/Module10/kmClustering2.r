library(ISLR)
library(ggplot2)

#print first 6 rows of the built-in-iris data frame
print(head(iris))

#Lets plot our data to get an idea of what we might expect when we trying 
#to cluster these species of flowers
pl <- ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()

print(pl)

#since kmean clustring randomly starts the centroid &
#randomly assigns point. So, in order to get the same cluster, we will
#set a seed to get the sampe o/p as the HOP o/p
set.seed(101)

#K meand implementation
#In the kmean we will pass first our data and remember since this is an unsupervised
#learning algorithim, your dat will not have a label
#That means we want tp pass only first 4 columns
#Next argument is how many clusters to expect which we expect
#three species si k-3
#The last argument is nstart which is a random number or
#the number of random start, so we choose 20
irisCluster <- kmeans(iris[, 1:4], 3, nstart = 20)
print(irisCluster)