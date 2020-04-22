#assign the dataset to cars variable
cars <- mtcars

#print first 6 rows of the dataframe
print(head(cars))

#return a vector
colv1 <- cars$mpg
print(colv1)

#return a vector
colv2 <- cars[, 'mpg']
print(colv2)

#a is int or string
colv3 <- cars[, 1]
print(colv3)

#return a vector
colv4 <- cars[['mpg']]
print(colv4)

#ways of returning data frames
mpgdf <- cars['mpg'] #return 1 col df