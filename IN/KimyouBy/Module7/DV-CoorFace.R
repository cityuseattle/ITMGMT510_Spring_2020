library(ggplot2)

df <- mpg
print(head(df))

#Data & Aesthetics Layer
pl <- ggplot(mpg, aes(x = displ, y = hwy))

#Geometry layer
#Adding the data& Aethetics layer to geom layer
pl2 <- pl + geom_point())

#to limit the scale of x-axis and y-axis
print(pl2 + coord_cartesian(xlim = c(1,4), ylim = c(15, 30)))