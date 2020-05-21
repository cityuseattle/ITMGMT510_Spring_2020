library(ggplot2)

df<-mtcars

print(head(df))

#data&aesthetics layer

pl<-ggplot(data=df,aes(factor(cyl), mpg))

#geometry layer
#adding the data&aesthetics  layer to geom layer
print(pl+geom_boxplot() + coord_flip())