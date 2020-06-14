cars <- mtcars

x<-cars[,c(1,2,3)] #Grab cols 1 2 3
print(head(x))#print first 6 row
#Run ur code to see the o/p

y<-cars[,c('mpg','cy1')] #By name
print(head(y));#Run ur code to see the o/p

z<-cars[,-1]#Keep all but first column
print(head(z))#Run ur code to see the o/p

w<-cars[,-c(1,3)]#drop cols 1 and 3
print(head(w))