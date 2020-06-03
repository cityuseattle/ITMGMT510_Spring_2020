library(ISLR)
library(ggplot2)

print(head(iris))

p1 = ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()
print(p1)
