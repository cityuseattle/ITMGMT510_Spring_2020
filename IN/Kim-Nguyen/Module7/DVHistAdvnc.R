    library(ggplot2)
    library(ggplot2movies)
    df <- movies <- movies[sample(nrow(movies), 1000), ]

    #print(head(df))

    #data and aesthetics layer
    #build a histogram out of rating column 
    pl <- ggplot(df,aes(x=rating))

    #geometry layer
    pl2<- pl + geom_histogram(binwidth = 0.1, aes (fill = ..count..)) + xlab('Movie Ratings') + ylab('Occurences')

    print(pl2 + scale_fill_gradient('Count', low = 'blue', high = 'red'))