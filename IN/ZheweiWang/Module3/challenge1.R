#create vector X,Y,Z
X <- c(1, 2, 3);
Y <- c(4, 5, 6);
Z <- c(7, 8, 9);

A <- cbind(X, Y, Z);
rownames(A) <- c("a", "b", "c");
print(A);