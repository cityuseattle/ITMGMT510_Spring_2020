productvect<-function(a=c(1:5)){
    res<-1;
    for(e in a){
        res<-res * e;
    }
    return(res);
}
print(productvect());
A<-c(1:5);
print(productvect(A));
B<-c(1:10);
print(productvect(B));