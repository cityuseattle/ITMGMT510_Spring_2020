library(ggplot2)
library(ggthemes)

df <- mtcars

print(head(df))

#Data & Aesthetics layer
p1 <- ggplot(data = df, aes(x = mpg, y = hp))

#Geometry layer
#Adding the data & Aesthetics layer with geom layer
p12 <- p1 + geom_point()

#Adding the data, Aesthetics, geom to theme layer
print(p12 + theme_excel())
print(p12 + theme_economist())