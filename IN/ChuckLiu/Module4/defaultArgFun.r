productVect <- function(a = c (1 : 5)) {
    res <- 1;
    for (i in a) {
        res <- res * i;
    }
    return(res);
}

#no arguments, it will use the default argument in the function
print(productVect());
A <- c(1 : 5);
print(productVect(A));
B <- c(1 : 10);
print(productVect(B));
