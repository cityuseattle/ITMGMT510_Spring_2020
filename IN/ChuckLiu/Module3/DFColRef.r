cars <- mtcars;
print(head(cars));

#returns a vector
colv1 <- cars$mpg
print(colv1);

colv2 <- cars[, 'mpg'];
print(colv2);

#a is int or string
colv3 <- cars[, 1];
print(colv3)

covl4 <- cars[['mpg']]; #return a vector
print(covl4);

#ways of returning data frames
mpgdf <- cars['mpg'];
print(head(mpgdf));

mpgdf2 <- cars[1] #returns 1 col df
print(head(mpgdf2));