df <- mtcars
print(head(cars))

colv1 <- cars$mpg
print(colv1)

colv2 <- cars[, 'mpg']
print(colv2)

colv3 <- cars[, 1]
print(colv3)

colv4 <- cars[['mpg']]
print(colv4)

mpgdf <- cars['mpg']
print(head(mpgdf))

mpgdf2 <- cars[1]
print(head(mpgdf2))

