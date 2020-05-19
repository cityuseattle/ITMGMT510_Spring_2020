library(ggplot2)

df <- mpg
print(head(df))

#DATA & AESTHETICS Layer
pl <- ggplot(mpg, aes(x=displ, cty))

#Geometry layer
#Adding the data& AESTHETICS layer with geom layer
pl2 <- pl +geom_point()

#print(pl2 + facet_grid(. ~ cyl))
print(pl2 + facet_grid(cyl ~ .))