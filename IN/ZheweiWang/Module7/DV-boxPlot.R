library(ggplot2)

df <- mtcars

print(head(df))

pl <-ggplot(data=df, aes(factor(cyl), mpg))

print(pl+geom_boxplot() + coord_flip())