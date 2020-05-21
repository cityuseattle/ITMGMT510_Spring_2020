library(ggplot2)
library(ggplot2movies)

df<-movies

print(head(df))

#data&aesthetics layer
pl<-ggplot(df,aes(x=year, y=rating))

#geometry layer
#adding the data&aesthetics layer with geom layer
print(pl+geom_density2d())