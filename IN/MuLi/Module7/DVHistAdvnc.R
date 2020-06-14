library(ggplot2)
library(ggplot2movies)

df <- movies<-movies[sample(nrow(movies), 1000),]

# print(head(df))

pl <- ggplot(df,aes(x=rating))

pl2 <- pl + geom_histogram(binwidth=0.1,aes(fill=..count..)) + xlab('Movie rating') + ylab('Occurence')

print(pl2 + scale_fill_gradient('Count',low='blue', high='red'))