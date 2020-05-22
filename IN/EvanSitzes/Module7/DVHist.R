library(ggplot2)
library(ggplot2movies)
df <- movies<-movies[sample(nrow(movies), 1000), ]

print(head(df))

p1 <- ggplot(df, aes(x=rating))

print(p1 + geom_histogram(binwidth=0.1, color='red', fill='pink', alpha=0.4) + xlab('Movie Rating') + ylab('Occurences' + ggtitle('Movie Ratings')))

