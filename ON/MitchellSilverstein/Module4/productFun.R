A <- c(1:5);

productVect <- function(a){ #productVect is the function name, the funtion arguement in this case is a vector
    res <- 1;               #res=1
    for(e in a){            #loop on the elements
        res <- res * e;
    }
printVect = res;
}
print(productVect(A));

B <- c(1:10);
print(productVect(B));