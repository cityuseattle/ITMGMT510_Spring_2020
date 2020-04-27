#use character columns of names to get sensible sort order
authors<-data.frame(
    surname=I(c("Tukey","Venables","Tierney","Ripley","McNeil")),
    nationality=c("US","Australia","US","UK","Australia"),
    deceased=c("yes",rep("no",4)))

#another data frame
books<-data.frame(
    name=I(c("Tukey","Venables","Tierney",
              "Ripley","Ripley","McNeil","R Core")),
    title=c("Exploratory Data Analysis",
            "Modern Applied Statistics ...",
            "LISP-STAT",
            "Spatial Statistics", "Stochastic Simulation",
            "Interactive Data Analysis",
            "An Introduction to R"),
    other.author=c(NA,"PIpley",NA,NA,NA,NA,
                   "Venables & Smith"))

#merge the author DF and books DF by names
print(m1<-merge(authors, books, by.x="surname",by.y="name",all=TRUE))

#example of using "incomparables"
x<-data.frame(k1=c(NA,NA,3,4,5), k2=c(1,NA,NA,4,5), data=1:5) #NA meas not assign
y<-data.frame(k1=c(NA,2,NA,4,5), k2=c(NA,NA,3,4,5), data=1:5)
print(merge(x,y,by=c("k1","k2"))) #NA's match

print(merge(x,y,by="k1")) #NA's match, so 6 rows

print(merge(x,y,by="k2", incomparables=NA)) #2 rows