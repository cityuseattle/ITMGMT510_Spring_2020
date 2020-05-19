library(ggplot2);

#mpg is a built-in dataset
df <- mpg;

print(head(df));

#Data & Aesthetics layer
pl <- ggplot(df, aes(displ, cty));

#Geometry layer 
#Adding the data & Aesthetics layer with geom layer
pl2 <- pl + geom_point();

print(pl2 + facet_grid(cyl ~ .));