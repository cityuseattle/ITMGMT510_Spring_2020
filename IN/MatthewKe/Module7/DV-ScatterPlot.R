library(ggplot2)

df <- mtcars

print(head(df))

#DATA & AESTHETICS Layer
pl <- ggplot(data = df, aes(x = wt, y = mpg))

#Geometry layer
#Adding the data & AESTHETICS layer with geom layer
print(pl + geom_point(aes(color = hp), size = 4) + scale_colour_gradient(high = 'red', low = 'blue')) 
