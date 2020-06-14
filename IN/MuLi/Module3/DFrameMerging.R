##use character columns of names to get sensible sort order
authors <- data.frame(
    surname = I(c("Tukey", "Venables", "Ripley", "McNeil")),
    nationality = c("US", "Australia", "US", "UK", "Australia"),
    deceased = c("yes", rep("no", 4)))

#Another Data Frame
books <- data.frame(
    name = I(c("Tukey", "Venables", "Tierney", 
            "Ripley", "Ripley", "McNeil", "R Core")),
    title = c("Exploratory Data Analysis",
              "Modern Applied Statistics ...",
              "LISP-STAT",
              "Spatial Statistics", "Stochastic Simulation",
              "Interactive Data Analysis",
              "An Introduction to R"),
    other.author = c(NA, "Riplay", NA, NA, NA, NA,
                     "Venables & Smith"))

#Merge the author DF and books DF by names
print(m1 <- merge(authors, books, ny.x = "surname", by.y = "name", all = TRUE))
#Please Run your code before writting the next example

#example of using 'incomprables'
x <- data.frame(k1 = c(NA,NA,3,4,5), k2 = c(1,NA,NA,4,5),data = 1:5); #NA means not assign
x <- data.frame(k1 = c(NA,2,NA,4,5), k2 = c(NA,NA,3,4,5),data = 1:5);
print(merge(x,y,by = c("k1","k2"))); #NA's match
#Please Run your code before writting the next line
print(merge(x,y,by = "k1"));#NA's match, so 6 rows
#Please Run your code before writting the next line 
print(merge(x,y,by = "k2",incomparables = NA)); # 2 rows