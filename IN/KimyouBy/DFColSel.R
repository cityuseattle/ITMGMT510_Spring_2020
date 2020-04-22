cars <- mtcars

#grab cols 1 2 3
x <- cars[, c(1, 2, 3)]
#print first 6 rows
print(head(x))

#by name
y <- cars[, c('mpg', 'cyl')]
print(head(y))

#keep all but first column
z <- cars[, -1]
print(head(z))

#drop cols 1 and 3
w <- cars[, -c(1, 3)]
print(head(w))