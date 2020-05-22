library(ggplot2)

df <- mpg
print(head(df))

#Data & Aesthetics Layer
#Counts (or sums of weights)
#The x axis will be the class column
#and the y axis will be the counts of the occurance of each elements in the class column
g <- ggplot(df, aes(class))

#Geometry Layer
print(g + geom_bar(aes(fill = drv)))