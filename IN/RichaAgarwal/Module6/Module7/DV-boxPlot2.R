library(ggplot2)

df = mtcars

print(head(df))

p1 = ggplot(data=df, aes(factor(cyl), mpg))

print(p1 + geom_boxplot() + coord_flip())