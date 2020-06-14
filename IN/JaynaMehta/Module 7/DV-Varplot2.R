library(ggplot2)
library(ggplot2movies)

df <-movies

print(head(df))

pl <- ggplot(df,aes(x = year, y = rating))

print(pl + geom_density2d())