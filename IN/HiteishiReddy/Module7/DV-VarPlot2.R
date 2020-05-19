library(ggplot2)
library(ggplot2movies)
df <- movies <- movies[sample(nrow(movies), 1000), ]

pl <- ggplot(df,ases(x=year, y=rating))

print(pl + geom_density2d())
