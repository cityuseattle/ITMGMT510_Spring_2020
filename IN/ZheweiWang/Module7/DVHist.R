library(ggplot2)
library(ggplot2movies)
df <- movies <-movies[sample(nrow(movies), 1000),]

# print(head(df))

#DATA & AESHETICS layer
#Build a histogram out of rating column
pl <- ggplot(df,aes(x=rating))

#Geometry layer
#adding the data & AESTHETICS layer with geom layer
print(pl + geom_histogram(binwidth=0.1,color='red', fill='pink', alpha=0.4, linetype='dotted') 
        + xlab('Movie Ratings') + ylab('Occurences') + ggtitle('Movie Ratings')) # adding the data & AESTHETICS layer with geom layer