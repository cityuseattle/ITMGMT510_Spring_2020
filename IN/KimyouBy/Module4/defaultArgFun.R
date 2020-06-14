A <- c(1:5);

#productVect is a function name, the function argument is a vector
productVect <- function(a){
    res <- 1;
    for(e in a){            #loop on the vector elements
        res <- res * e;     #res = res * e
    }
    return(res);             #productVect = res
}
print(productVect(A))       #No argument, it will use the default argument in the function

A <- c(1:5);
print(productVect(A))
B <- c(1:10);
print(productVect(B))