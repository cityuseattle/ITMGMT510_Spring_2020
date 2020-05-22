library(ggplot2)
df <- mpg
print(head(df))

g <- ggplot(data=df, aes(factor(cy1), mpg))

print(g + geom_boxplot() + coord_flip())