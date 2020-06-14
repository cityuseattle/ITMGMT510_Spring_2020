library(ggplot2)

df <- mtcars
print(head(df))

#DATA & AESTHETICS Layer
bl <- ggplot(data=df,aes(factor(cyl),mpg))

#Geometry layer
print(pl+geom_boxplot() + coord_flip())