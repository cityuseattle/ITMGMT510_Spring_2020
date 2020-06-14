A <- matrix(c(1,2,3,4,6,7,8,9,0), nrow = 3, ncol =3);
dimnames(A) <- list(c("X","Y","Z"), c("A","S","D"));

#select all rows except last row
print(A[-3,]);
#select the number in second row and second column
print(A[2,2]);
#select the elements and vaules based on more than and less than
print(A[A>4]);
#Modify the value of the number at second row and second column
A[2,2] <- 100;
print(A);
#add a row, use the rbind()
B <- rbind(A, c(1,2,3));
print(B);
#add a column, use the cbind()
C <- cbind(A,c(1,2,3));
print(C);