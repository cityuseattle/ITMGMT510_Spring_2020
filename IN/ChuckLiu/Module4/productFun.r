A <- c(1 : 5);

#productVect is the function name, the function argument in this case is a vector 
productVect <- function(a){
    res <- 1;
    for (i in A){
        res <- res * i;
    }
    productVect = res;
}
print(productVect(A));

B <- c(1 : 10);
print(productVect(B));
