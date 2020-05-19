library(ggplot2)
library(ggplot2movies)

df <- movies<-movies[sample(nrow(movies), 1000), ]

pl <- ggplot(df,aes(x=rating))

print(pl + geom_histogram(binwidth=0.1,aes(y=..density..)) + geom_density(color='red'))