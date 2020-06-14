library(ggplot2)
df <- mtcars

print(head(df))


pl <- ggplot(data=df,ases(x=wt, y=mpg))

print(pl + geom_point(aes(color= hp), size=4)+ scale_colour_gradient(high='red',low="blue"))