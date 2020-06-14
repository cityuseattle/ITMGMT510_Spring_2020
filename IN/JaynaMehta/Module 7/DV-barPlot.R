library(ggplot2)

df <- mpg
print(head(df))

g <-ggplot(df, aes(class))

print(g + geom_bar())