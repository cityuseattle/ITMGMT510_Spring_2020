    library(ggplot2)

    df <- mpg

    print(head(df))

    g <- ggplot(df, aes(class))

    #geometry layer
    print(g + geom_bar(aes(fill=drv)))