library(ggplot2)

df<-mtcars

print(head(df))

#data&aesthetics layer
pl<-ggplot(data=df,aes(x=mpg, y=hp))

#geometry layer
#adding the data&aesthetics layer to geom layer
pl2<-pl+geom_point()

#adding the data, aesthetics, geom to theme layer
print(pl2+theme_void())