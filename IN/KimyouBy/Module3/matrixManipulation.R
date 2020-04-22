A <- matrix(c(1, 2, 3, 4, 6, 7, 8, 9, 0), nrow = 3, ncol = 3, dimnames = list(c("X", "Y", "Z"), c("A", "S", "D")));

#select all rows except last row
print(A[-3,])

#select the number in second row and second column
print(A[2,2])

#select the elements and values based on more than and less than
print(A[A>4])

#modify the value of the number at second row and second column
A[2, 2] <- 100;
print(A)

#add a row, use the rbind() function
B <- rbind(A, c(1, 2, 3));
print(B)

#to add a column, use the cbind() function
C <- cbind(A, c(1, 2, 3));
print(C);

#to transpose a Matrix, use the t() function
A <- t(A);
print(A)

#challenge
D <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9,), nrow = 3, ncol = 3, dimnames = list(c("a", "b", "c"), c("x", "y", "z")));
print(D)