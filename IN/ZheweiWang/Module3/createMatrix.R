A <- matrix(c(1, 2, 3, 4, 6, 7, 8, 9, 0), nrow=3, ncol=3,
dimnames=list(c("X", "Y", "Z"), c("A", "S", "D")));
print(A);
print(class(A));
print(attributes(A));
print(colnames(A));
print(rownames(A));

#create matrix by column binding
B <- cbind(c(1, 2, 3), c(4, 5, 6));
print(B)

#create matrix by row binding
C <- rbind(c(1, 2, 3), c(4, 5, 6));
print(C);

#select matrix first row
print(A[1,]);

#select matrix first column
print(A[, 1]);