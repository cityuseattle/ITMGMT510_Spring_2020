library(ggplot2)

df <- mpg

print(head(df))

pl <- ggplot(mpg,aes(x=displ, y=hwy))

pl2 <- pl + geom_point()

print(pl2 + coord_cartesian(xlim=c(1,4),ylim=c(15,30)))