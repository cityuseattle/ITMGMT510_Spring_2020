library(ggplot2);
library(ggplot2movies);

df <- movies <- movies[sample(nrow(movies), 1000), ];

#Data & Aesthetics Layer
#Build a histogram out of rating column
pl <- ggplot(df, aes(x = rating));

#Geometry layer
#Adding the data & Aesthetics layer with geom layer
pl2 <- pl + geom_histogram(binwidth = 0.1, aes(fill = ..count..))
        + xlab('Movie Ratings') + ylab('Occurences');

#Scale_fill_gradient(label, lowColor, highColor)
print(pl2 + scale_fill_gradient('Count', low = 'blue', high = 'red'));
