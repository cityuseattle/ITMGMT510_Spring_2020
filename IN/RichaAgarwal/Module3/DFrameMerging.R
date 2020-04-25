authors <- data.frame(
    surname = I(c("Turkey", "Venables", "Riplry")),
    nationality = c("US", "UK","Australia"),
    deceased = c("yes", rep("no", 4)))

    books <- data.frame(
        name = I(c("Turkey", "R core", "Ripley")),
        title = c("Exploratory Data Analysis", "An Introduction to R", "LIST-STAT"),
        other.author = c(NA, "Ripley", NA))

        print(m1 <- merge(authors, books, by.x = "surname", by.y = "name", all = TRUE))
        x <- data.frame(k1 = c(NA,NA, 3)), k2 = c(1,NA,NA), data = 1:3)
        y <- data.frame(k1 = c(NA,2, NA)), k2 = c(1,NA,3), data = 1:3)

        print(merge(x,y,by = c("k1", "k2")))

        print(merge(x,y,by = "K1"))

        print(merge(x,y, by = "K2", incomparables = NA))