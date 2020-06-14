library(ggplot2)

df<- mpg
print(head(df))

g <- ggplot(df, ases(class))

print(g + geom_bar(aes(fill = drv)))