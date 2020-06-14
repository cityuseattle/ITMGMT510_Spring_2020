library(ggplot2)

df <- mtcars
print(head(df))

#Data & Aesthetics Layer
pl <- ggplot(data = df, aes(factor(cyl), mpg))

#Geometry layer
#Adding the data& Aethetics layer to geom layer
print(pl+ geom_boxplot() + coord_flip())