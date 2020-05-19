    library(ggplot2)

    df <- mtcars

    print(head(df))

    #data and aesthetics layer
    pl <- ggplot(data=df,aes(x=wt, y =mpg))

    #geometry layer
    print(pl + geom_point(aes(colour = hp), size=4) + scale_colour_gradient(high='red', low= 'blue'))