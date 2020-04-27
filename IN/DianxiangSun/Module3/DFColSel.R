cars<-mtcars

x<-cars[, c(1,2,3)] #grab cols 123
print(head(x)) #print first 6 rows

y<-cars[, c('mpg','cyl')] #by name
print(head(y))

z<-cars[, -1] #keep all but first column
print(head(z))

w<-cars[, -c(1,3)] #drop cls 1 and 3
print(head(w))