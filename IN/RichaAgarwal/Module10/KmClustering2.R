print(head(iris))

p1 = ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()

set.seed(101)

irisCluster = kmeans(iris[, 1:4],3,nstart = 20)
p1 = table(irisCluster$cluster, iris$Species)
print(p1)