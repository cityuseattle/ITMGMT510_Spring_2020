    library(ggplot2)

    df <- mtcars

    print(head(df))

    #data and aesthetics layer
    pl <- ggplot(data=df,aes(x = mpg, y = hp))

    #geometry layer
    pl2 <- pl + geom_point()

    print(pl2 + theme_void())