authors <- data.frame(
    surname = I(c("Tukey",'Venables','Tierney','Ripley','McNeil')),
    nationality = c("US","Australia","US","UK","Australia"),
    deceased = c("yes",rep("no",4))
)

books <- data.frame(
    name = I(c("Tukey",'Venables','Tierney','Ripley','Ripley','McNeil','R Core')),
    title = c('exploratory data analysis',
                'modern applied statistics ...',
                'lisp-stat','spatial statistics',
                'stochastic simulation','interactive data analysis','an introduction to r'),
    other.author = c(NA,'Ripley',NA,NA,NA,NA,'Venables & Smith')
)

print(m1 <- merge(authors,books,by.x = 'surname', by.y = 'name',all=TRUE))