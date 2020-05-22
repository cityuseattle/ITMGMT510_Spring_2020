library(ggplot2)
library(ggplot2movie)

df <- movies
print(head(df))

#Data & Aesthetics Layer
pl <- ggplot(df, aes(x = year, y = rating))

#Geometry layer
#Adding the data& Aethetics layer to geom layer
print(pl+ geom_bin2d())