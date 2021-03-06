library(ggplot)

df = mtcars

print(head(df))

p1 = ggplot(data=df, aes(x=wt, y=mpg))

print(p1 + geom_point(aes(color=hp), size=4) + scale_color_gradient(high='red', low = 'blue'))