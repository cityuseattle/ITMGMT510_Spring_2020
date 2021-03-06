A <- matrix(c(1, 2, 3, 4, 6, 7, 8, 9, 0), nrow = 3, ncol = 3,
dimnames = list(c("X", "Y", "Z"), c("A", "S", "D"))); #rename rows and columns by dimnames

print(A);
print(class(A));
#check dimension
print(attributes(A));

#get column
print(colnames(A));

#get row 
print(rownames(A));

#Create matrix by coloum binding
B <- cbind(c(1, 2, 3), c(4, 5, 6));
print(B);
#Create matrix by row binding
C <- rbind(c(1, 2, 3), c(4, 5, 6));
print(C);

#Select Matrix first row
print(A[1,]);
#Select Matrix first column
print(A[,1]);