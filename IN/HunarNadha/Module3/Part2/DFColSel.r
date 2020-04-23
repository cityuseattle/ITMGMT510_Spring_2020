cars <- mtcars

#Grab cols 1 2 3
x<-cars[, c(1,2,3)]
print(head(x))

#Print columns by name
y<- cars[, c('mpg', 'cyl')]
print(head(y))

z<-cars[, -1]
print(head(z))

w<-cars[, -c(1,3)]
print(head(w))