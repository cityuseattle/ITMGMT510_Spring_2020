library(ggplot2)

df = mpg

print(head(df))

p1 = ggplot(df,aes(displ, cty))

p12 = p1 + geom_point()

print(p12 + facet_grid(cyl ~ .))