
library(ggplot2)

df <- mtcars

print(head(df))

#Data & Aesthetics Layer
p1<- ggplot(data=df,aes(x=wt, y=mpg))

#Geometry layer
#Adding the data & Aesthetics layer with geom layer
print(p1 + geom_point(aes(color=factor(cyl))))