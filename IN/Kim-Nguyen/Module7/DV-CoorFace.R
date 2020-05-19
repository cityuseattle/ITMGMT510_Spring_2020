    library(ggplot2)

    df <- mpg

    print(head(df))

    #data and aesthetics layer
    pl <- ggplot(mpg,aes(x=displ, y =hwy))

    #geometry layer
    pl2 <- pl + geom_point()

    print(pl2 + coord_cartesian(xlim= c(1,4), ylim = c(15,30)))