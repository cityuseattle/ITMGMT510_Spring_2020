library(ggplot2)

df <- mpg #mpg is a built-in dataset

print(head(df))

#DATA & AESTHETICS Layer
pl <- ggplot(df, aes(displ, cty))

#Geometry layer
#Adding the data & AESTHETICS layer with geom layer
pl2 <- pl + geom_point()

print(pl2 + facet_grid(drv ~ cyl))

#Note: drv col has f, r, 4 and that means
# f = front-wheel drive, r = rear wheel drive, 4 = 4wd 
