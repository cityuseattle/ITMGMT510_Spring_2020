library(ggplot2);
library(ggplot2movies);

df <- movies;

print(head(df));

#Data & Aesthetics layer
pl <- ggplot(df, aes(x = year, y = rating));

#Geometry layer
#Adding the data & Aesthetics layer with geom layer
print(pl + geom_density2d());
