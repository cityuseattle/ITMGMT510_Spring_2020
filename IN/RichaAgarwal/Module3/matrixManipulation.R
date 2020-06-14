A <- matrix(c(1,2,3,4,5,6,7,8,9,0), nrow=3, ncol=3, dimnames=list(c("X", "Y","Z"), c("A", "S","D")))
print(A)

#select all rows expect last row
print(A[-3,])

#select the number in second row and second column
print(A[2,2])

#select the elements and values based on more then or less than
print(A[A>4])

#Modify the value of number at second row and column
A[2,2] <- 100
print(A)

#Add a row, use the rbind() function
B <- rbind(A, c(1,2,3))
print(B)

#To add a column , use the cbind() function
C <- cbind(A, c(1,2,3))
print(C)

#To transpose a matrix, use the t() function
A <- t(A)
print(A)
