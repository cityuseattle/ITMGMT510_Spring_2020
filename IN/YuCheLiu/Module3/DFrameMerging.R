authors <- data.frame(
    surname = I(c("Spencer", "Cathy", "John", "Amy", "Peter")),
    nationality = c("Taiwan", "China", "US", "UK", "Cananda"),
    deceased = c("yes", rep("no", 4))
)

books <- data.frame(
    name = I(c("Spencer", "Cathy", "John", "Amy", "Peter", "Linux", "Script")),
    title = c("Spencer life story ",
                 "Cathy build an house", 
                 "John drinks coke", 
                 "Amy dances", 
                 "Peter takes an class", 
                 "Linux is fun", 
                 "Script saves your time"),
    other.author = c(NA, "Rich", NA, NA, NA, NA, "Sam")
)

print(m1 <- merge(authors, books, by.x="surname", by.y ="name", all=TRUE))

x <- data.frame(k1 = c(NA, NA,3,4,5), k2= c(1, NA, NA, 4,5), data =1:5)
y <- data.frame(k1 = c(NA, 2,NA,4,5), k2= c(NA,3, 4, NA,5), data =1:5)
print(merge(x, y, by= c("k1", "k2")))

print(merge(x, y, by= "k1"))

print(merge(x, y, by= "k2", incomparables =NA))

