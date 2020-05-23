library(ggplot2)

df<- mpg

pl <- ggplot(mpg,aes(x=displ, y=hwy))

pl2 <- pl + geom_point()

print(pl2 + coord_catersian(xlim=c(1,4), ylim=c(15,30)))
