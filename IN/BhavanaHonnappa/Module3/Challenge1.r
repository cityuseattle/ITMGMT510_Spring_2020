# create three vectors, integer with 3 elements
X <- c(1,2,3);
Y <- c(4,5,6);
Z <- c(7,8,9);

#combine 3 vectors in Matrix as columns
A <- matrix( c(X, Y, Z), nrow=3, ncol=3);

# change rowname to A, B and C
rownames(A) <- c("A","B","C");
print(A);

