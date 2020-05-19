library(ggplot2)
library(ggplot2movies)

df = movies

print(head(df))

p1 = ggplot(df,aes(x = year, y= rating))

print(p1 + geom_density2d())