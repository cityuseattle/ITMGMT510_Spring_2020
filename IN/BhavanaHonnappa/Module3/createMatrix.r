A <- matrix(c(1, 2, 3, 4, 6, 7, 8, 9, 0), nrow=3, ncol=3, dimnames= list(c("x", "y", "z"), c("A", "S", "D")));

print(A);
print(class(A));
print(attributes(A));

print(colnames(A))
print(rownames(A))

B <- cbind(c(1, 2, 3), c(4, 5, 6));
print(B)

C <- rbind(c(1, 2, 3), c(4, 5, 6));
print(C);

print(A[1,]);

print(A[,1]);

