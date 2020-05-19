library(ggplot2)

df <- mtcars

print(head(df))

#DATA & AESTHETICS Layer
pl <- ggplot(data=df,aes(x=mpg, y=hp))

#Geometry layer
#Adding the data& AESTHETICS layer to geom layer
pl2<- pl+ geom_point()

#Adding he data, AESTHETICS, geom to theme layer
print(pl2+theme_void())