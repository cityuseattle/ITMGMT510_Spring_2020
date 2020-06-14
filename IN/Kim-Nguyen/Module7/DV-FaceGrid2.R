    library(ggplot2)

    df <- mpg

    print(head(df))

    #data and aesthetics layer
    pl <- ggplot(mpg,aes(displ, cty))

    #geometry layer
    pl2 <- pl + geom_point()

    print(pl2 + facet_grid(drv ~ cyl))