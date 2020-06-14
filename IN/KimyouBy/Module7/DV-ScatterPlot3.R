library(ggplot2)
library(ggplot2movie)

df <- mtcars

print(head(df))

#Data & Aesthetics Layer
pl <- ggplot(data=df, aes(x = wt, y=mpg))

#Geometry Layer
#Adding the data & Aesthetics layer to geom layer
print(pl + geom_point(aes(size=factor(cyl))))