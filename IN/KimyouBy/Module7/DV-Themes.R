library(ggplot2)

df <- mtcars

print(head(df))

#Data & Aesthetics layer
pl <- ggplot(data = df, aes(x = mpg, y = hp))

#Geometry layer
#Adding the data & Aesthetics layer with geom layer
pl2 <- pl + geom_point()

#Adding the data, Aesthetics, geom to theme layer
print(pl2 + theme_bw())
print(pl2 + theme_classic())
print(pl2 + theme_dark())
print(pl2 + theme_light())
print(pl2 + theme_linedraw())
print(pl2 + theme_void())