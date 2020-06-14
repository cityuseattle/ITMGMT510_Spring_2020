cars <- mtcars #assign the dataset to cars variable
print(head(cars))#print first 6 rows of the dataframe

colv1 <- cars$mpg #returns a vector
print(colv1)

colv2 <- cars[, 'mpg']
print(colv2)

colv3 <- cars[, 1]
print(colv3)

colv4 <- cars[['mpg']]
print(colv4)

#Ways of Returning Data Frames
mpgdf <- cars['mpg'] #returns 1 col df
print(head(mpgdf))

mpgdf2 <- cars[1]
print(head(mpgdf2))