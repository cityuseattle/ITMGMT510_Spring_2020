cars <- mtcars

x <- cars[, c(1,2,3)]
print(head(x))

y <- cars[, c('mpg','cyl')]
print(head(y))