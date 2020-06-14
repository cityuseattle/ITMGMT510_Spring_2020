library(ggplot2)
df <- mtcars

print(head(df))


pl <- ggplot(data=df,ases(x=wt, y=mpg))

rint(pl + geom_point(aes(color=cl)))
