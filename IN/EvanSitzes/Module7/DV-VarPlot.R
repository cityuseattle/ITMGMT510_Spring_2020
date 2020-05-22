library(ggplot2)
library(ggplot2movies)

df <- movies
print(head(df))

p1 <- ggplot(data=df, aes(x=year, y=rating))

print(g + geom_bin2d())