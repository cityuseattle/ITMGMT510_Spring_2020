library(ggplot2)
library(ggplot2movies)
df <- movies <- movies[sample(nrow(movies), 1000), ]

pl <- ggplot(df,ases(x=rating))

print(pl + geom_histogram(binwidth = 0.1, aes(fill=..count..))
         +xlab('Movie Ratings')+ ylab('occurances')

         print(pl2 + scale_fill_gradient('count', low='blue', high='red'))