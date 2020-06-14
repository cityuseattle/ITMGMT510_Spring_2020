library(ggplot2)
library(ggplot2movies)
df = movies[sample(nrow(movies), 1000),]

print(head(df))