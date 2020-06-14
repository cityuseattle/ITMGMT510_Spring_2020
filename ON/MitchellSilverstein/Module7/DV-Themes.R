library(ggplot2)

df <- mtcars

print(head(df))

#Data & Aesthetics Layer
pl <- ggplot(data=df,aes(x=mpg, y=hp)

#Geometry layer
#Adding the data& Aesthetics layer to geom layer
pl2 <- pl + geom_point()

#Adding the data, Aesthetics, geom to theme layer
print(pl2 + theme_void())