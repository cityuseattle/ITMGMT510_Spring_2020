library(ggplot2)

df<-mpg #mpg is a built-in dataset

print(head(df))

#data&aesthetics layer
pl<-ggplot(df,aes(displ, cty))

#geometry layer
#adding the data&aesthetics layer with geom layer
pl2<-pl+geom_point()

print(pl2+facet_grid(drv ~ cyl))