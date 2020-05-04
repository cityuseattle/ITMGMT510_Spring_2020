A <- matrix(c(1,2,3,4,6,7,8,9,0), nrow = 3, ncol = 3);
dimnames = list (c("X", "Y", "Z"), c("A", "S", "D"));

print(A[-3,]);  #select all rows except last one

print(A[2,2]);   # select num in second row and second col

print(A[A > 4]); # select elems and vals based on more than and less than

A[2,2] <- 100;
print(A);

B <- cbind(A(1,2,3));   #add a row using rbind() func
print(B);

C <- cbind(A(1,2,3));   #add a col using cbind() func
print(C);

#transpose a matrix, use t() func
A <- t(A);
print(A);
