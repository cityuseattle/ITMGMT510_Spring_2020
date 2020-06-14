A <- c(1:5);

#productVect is a function name, the function argument is a vector
productVect <- function(a){
    res <- 1;
    for(e in a){            #loop on the vector elements
        res <- res * e;     #res = res * e
    }
    productVect = res;      #productVect"function name"= the value to return from the function
}
print(productVect(A))

B <- c(1:10);
print(productVect(B))