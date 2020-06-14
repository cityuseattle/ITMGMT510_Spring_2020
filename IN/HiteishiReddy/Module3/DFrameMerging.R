authors <- data.frame(
    surname = I(c("tukey", "venables", "tierney", "ripley", "McNeil")),
    nationality = cat(("US", "Australis", "US", "Australia"), 
    deceased = c("yes", rep("no", 4)))

books <- data,frame(
    deceased = I(c("tukey", "venables", "tierney", "ripley", "McNeil", "R Core"))
    title = c("Exploratory Data Analysis", "LISP-STAT", "Spaital Statistics", "Stochastic simulation", 
                "Imteractive Analysis", "An introduction to R")

    othr.author = c(NA, "Ripley", NA. NA,NA, NA "Venables & Smith")

    print(m1 < merge(authors, books, by.x = "suranme", by.y = "name", all =TRUE))

    x <- data.frame(k1 = C(NA,NA,3,4,5), k2= C(1, NA,NA,4,5), data = 1:5)
    x <- data.frame(k1 = C(NA,NA,3,4,5), k2= C(1, NA,NA,4,5), data = 1:5)
    
    print(merge(x,y, by = "k1", "k2"))

    print(merge(x,y, by = "k1"))

    print(merge(x,y, by = "k2", incomparables = NA))
)