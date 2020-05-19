    library(ggplot2)

    df <- mtcars

    print(head(df))

    #data and aesthetics layer
    pl <- ggplot(data=df,aes(x=wt, y =mpg))

    #geometry layer
    print(pl + geom_point(aes(color=cyl)))