library(ggplot2)

df <- mpg  #mpg is a built-in dataset

print(head(df))

#Data & Aesthetics Layer
pl <- ggplot(df, aes(displ, cty))

#Geometry layer
#Adding the data& Aesthetics layer to geom layer
pl2 <- pl + geom_point()

print(pl2 + facet_grid(cyl ~ .))