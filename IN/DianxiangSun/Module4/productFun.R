A <- c(1:5);

productVect <- function(a){     #productVect is the function name, the function argument in this case is a vector
    res <- 1;                   #res=1
    for(e in a){                #loop on the vector elements
        res <- res * e;         # res = res * e
    }                  
    productVect = res;          #productVect"function name"= the value to return from the function
}
print(productVect(A));

B <- c(1:10);
print(productVect(B));