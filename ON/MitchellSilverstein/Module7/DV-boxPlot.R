
library(ggplot2)

df <- mtcars
print(head(df))

#Data & Aesthetics Layer
p1 <- ggplot(data=df, aes(factor(cyl), mpg))

#Geometry layer
#Adding the data& Aesthetics layer to geom layer
print(p1 + geom_boxplot() + coord_flip())