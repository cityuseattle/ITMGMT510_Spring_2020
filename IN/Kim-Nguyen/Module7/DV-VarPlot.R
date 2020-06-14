    library(ggplot2)

    df <- movies

    print(head(df))

    #data and aesthetics layer
    pl <- ggplot(df,aes(x=year, y =rating))

    #geometry layer
    print(pl + geom_bin2d())