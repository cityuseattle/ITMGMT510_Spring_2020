library(ggplot2)

df<-mpg #mpg is a built-in dataset

print(head(df))

#data&aesthetics layer
pl<-ggplot(mpg,aes(x=displ,y=hwy))

#geometry layer
#adding the data&aesthetics layer with geom layer
pl2<-pl+geom_point()

#to limit the scale of x-axis and y-axis
print(pl2+coord_cartesian(xlim=c(1,4),ylim=c(15,30)))