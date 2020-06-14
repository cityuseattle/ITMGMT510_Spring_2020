library(ggplot2)
library(ggplot2movies)

df <- movies
print(head(df))

#DATA & AESTHETICS Layer
pl <- ggplot(df,aes(x = year,y=rating))

#Geometry layer
#adding the data& AESTHETICS layer to geom layer
print(pl+ geom_density2d())