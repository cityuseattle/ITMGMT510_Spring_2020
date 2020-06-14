library(ggplot2)

df <- mtcars
print(head(df))

g<- ggplot(data=df, aes(factor(cyl),mpg))

print(g + geom_boxplot() + coord_flip())