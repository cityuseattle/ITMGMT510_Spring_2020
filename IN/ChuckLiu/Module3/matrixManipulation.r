A <- matrix(c(1, 2, 3, 4, 6, 7, 8, 9, 0), nrow = 3, ncol = 3,
dimnames = list(c("X", "Y", "Z"), c("A", "S", "D")));

#Select all rows except last row
print(A[-3,]);

#Select the number in second row and second column
print(A[2, 2]);

#Select the elements and values based on more than and less than
print(A[A > 4]);

#Modify the value of the number at second row and second column
A[2, 2] <- 100;
print(A);

#Add a row by using rbind() function
B <- rbind(A, c(11, 12, 13));
print(B);

#Add a column by using cbind() function
C <- cbind(B, c(14, 15, 16));
print(C);

#To transpose a matrix, use the t() function
A <- t(A);
print(A);
