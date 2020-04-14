#create a vector
A <- c(1, 2, 3, 4, 5, 6);

print(A);
print(typeof(A));
print(class(A));
print(length(A));

#create a vector using:
B <- 1:8;
print(B);

#retrieve second element of the vector
print(B[2]);

#retrieve second and fifth element
print(B[c(2,5)]);

#retrieve all the element of the vector except 2nd value
print(B[-2]);

#retrieve element of the vector using a logical vector
print(B[c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE)]);

#retrieve element bigger than 5
print(B[B > 5]);

#modify vector element
B[3] <- 9
print(B);