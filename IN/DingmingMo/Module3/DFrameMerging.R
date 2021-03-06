## use character columns of names to get sensible sort order
authors <- data.frame(
    surname = I(c("Tukey","Venables","Tierney","Ripley","McNeil")),
    nationality = c("US","Australia","US","UK","Australia"),
    deceased = c("yes",rep("no", 4)))

# Another Data Frame
books <- data.frame(
    name = I(c("Tukey","Venables","Tierney",
    "Ripley","Ripley","McNeil","R Core")),
    title = c("Exploratory Data Analysis",
    "Modern APPLIED Statistics ...",
    "LISP-STAT",
    "Spatial Statistics", "Stochatic Simulation",
    "Interactive Data Analysis",
    "An Introduction to R"),
    other.author = c(NA,"Ripley",NA,NA,NA,NA,
    "Venables & Smith"))

print(m1 <- merge(authors, books, by.x = "surname", by.y = "name", all=TRUE))

x <- data.frame(k1 = c(NA,NA,3,4,5),k2 = c(1,NA,NA,4,5),data = 1:5)
y <- data.frame(k1 = c(NA,2,NA,4,5),k2 = c(NA,NA,3,4,5),data = 1:5)
print(merge(x, y, by = c("k1","k2")))
print(merge(x, y, by = "k1"))
print(merge(x, y, by = "k2", incomparables = NA))

    

