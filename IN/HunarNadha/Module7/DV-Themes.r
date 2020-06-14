library(ggplot2)

df <- mtcars
print(head(df))

#DATA & AESTHETICS Layer
pl <- ggplot(data=df,aes(x=mpg, y=hp))

#Geometry layer
#adding the data& AESTHETICS layer to geom layer
pl2<- pl + geom_point()

#adding the data, AESTHETICS, geom to theme layer
#print(pl2+theme_bw())
#print(pl2+theme_classic())
#print(pl2+theme_dark())
#print(pl2+theme_light())
#print(pl2+theme_linedraw())
print(pl2+theme_void())