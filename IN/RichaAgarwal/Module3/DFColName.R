cars <- mtcars

x <- cars[, c(1,2,3)]
print(head(x))

y <- cars[, c('mpg','cyl')]
print(head(y))

colnames(cars) <- c('col1','col2','col3')
print(head(cars))