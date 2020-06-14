cars <- mtcars

x<-cars[,c(1,2,3)]
print(head(x));

y<-cars[,c('mpg','cy1')]
print(head(y));

z<-cars[,-1]
print(head(z));

w<-cars[,-c(1,3)]
print(head(w))