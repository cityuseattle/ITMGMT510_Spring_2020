library(ggplot2)

df <- mpg #mpg is a built-in dataset

print(head(df))

#DATA & AESTHETICS Layer
pl <- ggplot(df, aes(displ, cty))

#Geometry layer
#Adding the data & AESTHETICS layer with geom layer
pl2 <- pl + geom_point()

#To limit the scale of x-axis and y-axis
print(pl2 + facet_grid(cyl ~ .)) 