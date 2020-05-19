
library(ggpplot2)

df <- mtcars

print(head(df))

pl <- ggplot(mpg,aes(x=mpg, y=hp))

pl2 <- pl + geom_point()

print(pl2+theme_void())
