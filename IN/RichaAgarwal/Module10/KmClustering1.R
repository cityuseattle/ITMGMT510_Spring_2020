print(head(iris))

p1 = ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()

set.seed(101)

irisCluster = kmeans(iris[, 1:4],3,nstart = 20)
print(irisCluster)