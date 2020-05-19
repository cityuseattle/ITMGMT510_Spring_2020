library(ggplot2)

df = mtcars

p1 = ggplot(data=df,aes(x=mpg, y =hp))

p12 = p1 + geom_point()

print(p12+theme_linedraw())