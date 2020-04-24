cars <- mtcars

x<-cars[, c(1,2,3)] #Grab cols 1 2 3
print(head(x))#print first 6 rows
#Run your code to see the o/p

y<- cars[, c('mpg','cyl')] # by name
print(head(y))#Run your code to see the o/p

z<- cars[, -1] # keep all but first column
print(head(z))#Run your code to see the o/p

w<- cars[, -c(1,3)] # drop cols 1 and 3
print(head(w))