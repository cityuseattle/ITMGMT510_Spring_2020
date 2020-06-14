library(ggplot2);

df <- mpg;

print(head(df));

#Data & Aesthetics layer
pl <- ggplot(mpg, aes(x = displ, y = hwy));

#Geometry layer
#Adding the data & Aesthetics layer with geom layer
print(pl + geom_point());