#Create a vector
A <- c(1, 2, 3, 4, 5, 6);
print(A);

#check type of A
print(typeof(A));

print(class(A));

#the length of the vector
print(length(A));
#using : to create a vector, including both ends.
B <- 1 : 8;
print(B);

#Retrive the second element of the vector
print((B[2]));

#Retrive the second and fifth element in the vector
print(B[c(2, 5)]);

#Retrive all elements of the vector except the second element by using negative number
print(B[-2]);

#Retrieve elements of a vector using a logical vector
print(B[c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE)]);

#Retrieve elements bigger than 5
print(B[B > 5]);

#Modify vector element
B[3] <- 9
print(B)