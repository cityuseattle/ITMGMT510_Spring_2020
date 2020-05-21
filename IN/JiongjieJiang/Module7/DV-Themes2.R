library(ggplot2)
library(ggthemes)

df <- mtcars

print(head(df))

#DATA & AESTHETICS Layer
pl <- ggplot(data = df, aes(x = mpg, y =hp))

#Geometry layer
#Adding the data & AESTHETICS layer with geom layer
pl2 <- pl + geom_point()

#Adding the data, AESTHETICS, geom to theme layer
print(pl2 + theme_economist())