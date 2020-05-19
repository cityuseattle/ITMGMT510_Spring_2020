library(ggplot2)

df <-mpg

g<-ggplot(df,aes(class))

print(g+geom_bar(aes(fill = drv)))
