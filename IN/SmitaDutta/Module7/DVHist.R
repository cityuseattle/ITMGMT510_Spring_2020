library(ggplot2)
library(ggplot2movies)
df <- movies <-movies[sample(nrow(movies), 1000), ]
#print(head(df))

pl<-ggplot(df, aes(x=rating))

print(pl + geom_histogram(bindwidth=0.1, color ='red', fill='pink', alpha =0.4, linetype ='dotted')
           + xlab('Movie Ratings') + ylab('Occurences') + ggtitle(' Movie Ratings'))
