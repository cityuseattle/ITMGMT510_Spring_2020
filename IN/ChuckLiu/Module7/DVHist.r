library(ggplot2);
library(ggplot2movies);

df <- moview <- movies[sample(nrow(movies), 1000), ];

#Data & Aesthetics Layer
#Build a histogram out of rating column
pl <- ggplot(df, aes(x = rating));

#Geometry layer
#Adding the data & Aesthetics layer with geom layer
print(pl + geom_histogram(binwidth = 0.1, color = 'blue', fill = 'pink', alphy = 0.4, linetype = 'dotted')
        + xlab('Movie Ratings') + ylab('Occurences') + ggtitle('Movie ratings'));