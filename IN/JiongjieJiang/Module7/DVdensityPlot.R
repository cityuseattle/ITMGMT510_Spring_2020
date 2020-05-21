library(ggplot2)
library(ggplot2movies)
df <- movies <- movies[sample(nrow(movies), 1000), ]

#print(head(df))

#DATA & AESTHETICS Layer
#Build a histogram out of rating colum
pl <- ggplot(df, aes(x = rating))

#Geometry layer
#Adding the data & AESTHETICS layer with geom layer
print(pl + geom_histogram(binwidth = 0.1, aes(y = ..density..)) + geom_density(color = 'red'))