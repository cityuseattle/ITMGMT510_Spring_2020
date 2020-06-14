library(ggplot2)
df<- mtcars

print(head(pf))

pl <- ggplot(data=df,aes(x=wt, y=mpg))

print(pl + geom_point(aes(colour=hp),size=4)+ scale_colour_gradient(high='red', low="blue"))
