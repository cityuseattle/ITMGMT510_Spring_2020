#use character coulumns of names to get sensible sore order
authors <- data.frame(
    surname = I(c("Tukey", "Venables", "Tierney", "Ripley", "Mcneil")),
    nationality = c("US", "Australia", "US", "UK", "Australia"),
    deceased = c("yes", rep("no", 4))
)

#new data frame
books <- data.frame(
    name = I(c("Tukey", "Venables", "Tierney", "Ripley", "Ripley", "Mcneil", "R Core")),
    title = c("Exploratory data analysis", "Modern applied statistics", "LISP-STAT",
    "Spatial statistics", "Stochastic simulation", "Interactive data analysis", "An introduction to R"),
    other.author = c(NA, "Ripley", NA, NA, NA, NA, "Venables & Smith")
)

#merge the author DF and books DF by names
print(m <- merge(authors, books, by.x = "surname", by.y = "name", all = TRUE));

x <- data.frame(k1 = c(NA, NA, 3, 4, 5), k2 = c(1, NA, NA, 4, 5), data = 1:5);
y <- data.frame(k1 = c(NA, 2, NA, 4, 5), k2 = c(NA, NA, 3, 4, 5), data = 1:5);
print(merge(x, y, by = c("k1", "k2")));
print(merge(x, y, by = "k1"));
print(merge(x, y, by = "k2", incomparables = NA));
