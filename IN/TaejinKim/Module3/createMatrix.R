A <- matrix(c(1,2,3,4,6,7,8,9,0), nrow=3, ncol = 3, dimnames=list (c("X","Y","Z"), c("A","S", "D")));

print(A);
print(class(A));
print(attributes(A));

print (colnames(A))
print (rownames(A))

B <- cbind(c(1,2,3), c(4,5,6));
C <- rbind(c(1,2,3), c(4,5,6));


print(B)
print(C)

A[2, 3] <- 100;

print (A);

print(A[1,]); # Selext matrix first row
print(A[,1]); # Select matrix first column

print (A[,2]);
