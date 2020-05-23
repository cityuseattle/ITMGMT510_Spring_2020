library(ggplot2)

df<-mtcars

print(head(df))

#data&aesthetics layer
pl<-ggplot(data=df,aes(x=wt,y=mpg))

#geometry layer
#adding the data&aesthetics layer with geom layer
print(pl+geom_point(aes(color=factor(cyl))))