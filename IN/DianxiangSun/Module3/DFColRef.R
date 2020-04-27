cars<-mtcars #assign the dataset to cars variable
print(head(cars)) #print first 6 rows of the dataframe

colv1<-cars$mpg #return a vector
print(colv1)

colv2<-cars[, 'mpg'] #return vector
print(colv2)

colv3<-cars[,1] # a is int or string
print(colv3)

colv4<-cars[['mpg']] #returns a vector
print(colv4)



#ways of returning data frames
mpgdf<-cars['mpg'] #returns 1 col df
print(head(mpgdf)) # first 6 rows

mpgdf2<-cars[1] #returns 1 col df
print(head(mpgdf2))