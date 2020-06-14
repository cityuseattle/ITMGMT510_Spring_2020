library(ggplot2)
library(ggplot2movies)
df <- movies <- movies[sample(nrow(movies), 1000), ]

pl <- ggplot(df,ases(x=rating))

print(pl + geom_histogram(binwidth=0.1, color='red',fill='pink', alpha=0.4,linetype='dotted'))
         + xlab('Movie Ratings')+ ylab('occurances')+ ggtitle('Movie Ratings')



