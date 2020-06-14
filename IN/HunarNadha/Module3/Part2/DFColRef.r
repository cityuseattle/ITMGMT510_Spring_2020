#Assign the dataset to cars variable
cars <- mtcars
print(head(cars)) 

#returns a vector
colv1 <- cars$mpg
print(colv1)

#returns a vector
colv2 <- cars[, 'mpg']
print(colv2)

#a is int or string
colv3 <- cars[, 1]
print(colv3)

#returns a vector
colv4 <- cars[['mpg']]
print(colv4)

#Ways of returning Data Frames
#returns 1 col df
mpgdf <- cars['mpg']
print(head(mpgdf))

#returns 1 col df
mpgdf2 <- cars[1]
print(head(mpgdf2))
