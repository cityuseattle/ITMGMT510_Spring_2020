library(ggplot2)

df <- mpg
print(head(df))

#DATA & AESTHETICS Layer
# counts (or sums of weights)
# The x axis will be the class col
# and the y axis will be the counts of 
# the occurenece of each elements in the class col
g <- ggplot(df, aes(class))

#Geometry layer
#fille th col colors based on the number of drv in each class
print(g + geom_bar(aes(fill = drv)))