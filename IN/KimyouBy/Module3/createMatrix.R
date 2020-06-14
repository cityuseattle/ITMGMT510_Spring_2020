A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3, dimnames = list(c("X", "Y", "Z"), c("A", "S", "D")));
print(A)
print(class(A))
print(attributes(A))

print(colnames(A))
print(rownames(A))

#create Matrix by column binding
B <- cbind(c(1, 2, 3), c(4, 5, 6));
print(B)

#create Matrix by row binding
C <- rbind(c(1, 2, 3), c(4, 5, 6));
print(C)

#select Matrix first row
print(A[1,])

#select Matrix first column
print(A[,1])