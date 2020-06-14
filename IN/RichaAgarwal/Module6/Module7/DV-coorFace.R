library(ggplot2)

df = mpg

print(head(df))

p1 = ggplot(mpg,aes(x=displ,y=hwy))

print(p1 + geom_point())