library(ggplot2)

df = mpg

print(head(df))

p1 = ggplot(mpg,aes(x=displ,y=hwy))

print(p1 + geom_point())

p12 = p1 + geom_point()

print(p12 + coord_cartesian(xlimc(1,4),ylim=c(15,30)))

