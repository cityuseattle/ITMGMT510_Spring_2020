
x<-c(1:3);
y<-c(4:6);
z<-c(7:9);
A<-cbind(x,y,z)
A<-matrix(A,nrow=3,ncol=3,dimnames=list(c("a","b","c"),c("x","y","z")));
print(A);


