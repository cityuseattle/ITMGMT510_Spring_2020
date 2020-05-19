library(ggplot2)
library(ggthemes)

df <- mtcars
print(head(df))

#DATA & AESTHETICS Layer
pl <- ggplot(data=df,aes(x=mpg, y=hp))

#Geometry layer
#adding the data& AESTHETICS layer to geom layer
pl2<- pl + geom_point()

#adding the data, AESTHETICS, geom to theme layer
print(pl2+theme_excel())