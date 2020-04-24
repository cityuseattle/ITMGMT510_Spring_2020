cars <- mtcars #assign the dataset to cars variable
print(head(cars))#print first 6 rows of the dataframe

colv1 <- cars$mpg # returns a vector
print(colv1) #Run your code before writing next line to see the OP

colv2 <- cars[, 'mpg'] # returns vector
print(colv2)#Run your code before writing next line to see the OP

colv3 <- cars[, 1] # a is int or string
print(colv3)#Run your code before writing next line to see the OP

colv4 <- caars[['mpg']] # returns aa vector
print(colv4)#Run your code before writing next line to see the OP


#Ways of Returning Dataa Frames
mpgdf <- cars['mpg'] # returns 1 col df
print(head(mpgdf))#I used head to show only first 6 rows

mpgdf2 <- cars[1] # returns 1 col df
print(head(mpgdf2))