library(ggpplot2)

df <- mpg

print(head(df))


pl <- ggplot(mpg,aes(x=displ, y=hwy))

pl2 <- pl + geom_point()

print(pl2 + facet_grid(drv ~ cyl))

