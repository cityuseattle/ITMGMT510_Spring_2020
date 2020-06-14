library(ggplot2);
library(ggplot2movies);

df <- moview <- movies[sample(nrow(movies), 1000), ];


pl <- ggplot(df, aes(x = rating));

print(pl + geom_histogram(binwidth = 0.1, color = 'blue', fill = 'pink', alphy = 0.4, linetype = 'dotted')
        + xlab('Movie Ratings') + ylab('Occurences') + ggtitle('Movie ratings'));