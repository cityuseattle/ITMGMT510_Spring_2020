cars <- mtcars

x <- cars[, c(1, 2, 3)] 
print(head(x))

y <- cars[, c('mpg', 'cyl')]
print(head(y))

z <- cars[, -1]#keep all but 1st col
print(head(z))

w <- cars[, c(1, 3)] #drop clos 1 and 3
print(head(w))