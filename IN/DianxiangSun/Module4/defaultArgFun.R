productVect<- function(a=c(1:5)) {
    res <- 1;
    for(e in a) {
    res <- res * e;
    }
    return(res);
    }
print(productVect());   #No arguments, it will use the default argument in the function
A <- c(1:5);
print(productVect(A));
B <- c(1:10);
print(productVect(B));