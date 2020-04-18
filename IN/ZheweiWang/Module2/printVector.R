#create a vector
A <- c(1, 2, 3, 4, 5, 6);
print(A);
print(typeof(A));
print(class(A));
print(length(A));

#create a vector using:
B <- 1:8
print(B);
#retrieve 2nd element of the vector
print((B[2]));
#retrieve 2nd and 5th element of the vector
print(B[c(2,5)]);
#retrieve all element of the vector except the 2nd value
print(B[-2]);
#retrieve  elements of the vector using a logical vector
print(B[c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE,TRUE)]);
#retrieve  elements of the vector bigger than 5
print(B[B > 5]);
#Modify vector element
B[3] <- 9
print(B)