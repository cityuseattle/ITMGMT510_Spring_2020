library(ggplot2)

df = mtcars

print(head(df))

p1 = ggplot(data=df, aes(x=wt, y=mpg))

print(p1 + geom_point(aes(color=cyl)))