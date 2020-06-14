    library(ggplot2)

    df <- mtcars

    print(head(df))

    pl <- ggplot(data=df, aes(factor(cyl), mpg))

    #geometry layer
    print(pl + geom_boxplot() + coord_flip())