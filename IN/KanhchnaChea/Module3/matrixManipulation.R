A <- matrix(c(1, 2, 3, 4, 6, 7, 8, 9, 0), nrow=3, ncol=3,
dimnames=list(c("X", "Y", "Z"), c("A", "S", "D"))); 

print(A[-3,]);

print(A[2,2]);

print(A[A>4]);

A[2, 2] <- 100;
print(A);

B <- rbind(A, c(1, 2, 3));
print(B);

C <- cbind(A, c(1, 2, 3));
print(C);

A <- t(A);
print(A);


D <- matrix(c(3, 3, 3), nrow=3, ncol=3,
dimnames=list(c("X", "Y", "Z"), c("a", "b", "c")));

print(D);
