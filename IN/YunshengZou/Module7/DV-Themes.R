library(ggplot2)

df <- mtcars
print(head(df))

#DATA & AESTHETICS Layer
pl <- ggplot(data=df,aes(x=mpg,y=hp))

#Geometry layer
#Adding the data& AESTHETICS layer with geom layer
pl2 <- pl+ geom_point()

#To limit the scale of x-axis and y-axis
#print(pl2 + facet_grid(.~cyl))
#print(pl2 + theme_bw())

#print(pl2 + theme_classic())

#print(pl2 + theme_dark())

#print(pl2 + theme_light())

#print(pl2 + theme_linedraw())

print(pl2 + theme_void())