productVect <- function(a = c(1:5)) {
    res <- 1;
    for(e in a) {
    res <- res * e;
    }
    return(res);
    }
print(productVect()); # No arugments
A <- c(1:5);
print(productVect(A));
B <- c(1:10);
print(productVect(B)); 