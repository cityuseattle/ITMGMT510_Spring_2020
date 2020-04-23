#Challenge1
#Create three vectors with integers and each vector has 3 elements
x<-1:3
y<-1:3
z<-1:3
print(x)
print(y)
print(z)

#combine three vectors in 3*3 matrix, where each column represents a vector
#Also name rows to a,b,c

A <- matrix(c(x,y,z), nrow=3, ncol=3,
dimnames=list(c("x","y","z"), c("a","b","c")));
print(A);