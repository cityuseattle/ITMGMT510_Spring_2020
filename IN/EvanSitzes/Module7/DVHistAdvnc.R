library(ggplot2)
library(ggplot2movies)
df <- movies<-movies[sample(nrow(movies), 1000), ]

p1 <- ggplot(df, aes(x=rating))

p12 <- p1 + geom_histogram(binwidth=0.1, aes(fill=..count..)) + xlab('Movie Ratings') + ylab('Occurences')

print(p12 + scale_fill_gradient('Count', low='blue', high='red'))