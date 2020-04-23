X <- c(1,2,3);
Y <- c(4,5,6);
Z <- c(7,8,9);

A <- cbind(X,Y,Z);
A <- matrix(A,
            nrow=3, 
            ncol=3,
            dimnames = list(c("a", "b", "c"), c("X", "Y", "Z")));
print(A);
