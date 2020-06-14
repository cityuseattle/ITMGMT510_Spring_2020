library(ggplot2)

df <- mpg 

print(head(df))

pl <- ggplot(df,aes(displ, cty))

pl2 <- pl + geom_point()

print(pl2 + facet_grid(drv ~ cyl))