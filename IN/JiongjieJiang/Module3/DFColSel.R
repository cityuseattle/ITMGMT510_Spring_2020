cars <- mtcars

x <- cars[, c(1, 2, 3)] #Grab cols 1 2 3
print(head(x))

y <- cars[, c('mpg', 'cyl')] #by name
print(head(y))

z <- cars[, -1] #keep all but first
print(head(z))

w <- cars[, -c(1, 3)] #drap 1 and 3
print(head(w))