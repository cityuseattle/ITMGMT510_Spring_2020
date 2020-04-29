A <- c(1:5);

porductVect <- function(a){
    res <- 1;
    for(e in a){
        res <- res * e;
    }
    porductVect = res;
}

print(porductVect(A));

B <- c(1:10);
print(porductVect(B));