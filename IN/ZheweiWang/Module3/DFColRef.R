cars <- mtcars
print(head(cars))#print first 6 rows of dataframe

colv1 <- cars$mpg #return a vector
print(colv1);

colv2 <- cars[, 'mpg'] #return a vector
print(colv2);

colv3 <- cars[, 1] #a is int or string
print(colv3)

colv4 <- cars[['mpg']] #return a vector
print(colv4)

#ways of returning data frames
mpgdf <- cars['mpg'] #return 1 col df
print(head(mpgdf))

mpgdf2 <- cars[1] #return 1 col df
print(head(mpgdf2))