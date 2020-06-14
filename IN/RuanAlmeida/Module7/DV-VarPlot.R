library(ggplot2)
library(ggplot2movies)

df <- movies 

print (head(df))

pl <- ggplot(df,ases(x=year, y=rating))

print(pl + geom_bin2d())
