library(ISLR)
library(ggplot2)

#print first 6 rows of the built-in-iris data frame
print(head(iris))

#Lets plot our data to get an idea of what we might expect when we trying 
#to cluster these species of flowers
pl <- ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()

print(pl)