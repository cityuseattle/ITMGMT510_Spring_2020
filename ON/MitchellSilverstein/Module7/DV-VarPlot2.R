
library(ggplot2)
library(ggplot2movies)

df <- movies

print(head(df))

#Data & Aesthetics Layer
p1 <- ggplot(df, aes(x=year,y=rating))

#Geometry layer
#Adding the data& Aesthetics layer to geom layer
print(p1 + geom_density2d())