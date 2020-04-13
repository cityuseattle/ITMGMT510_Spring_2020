#Create a vector
A <- c(1,2,3,4,5,6);
print(A);
print(typeof(A));
print(class(A));
print(length(A));

#Create a vector using:
B <-1:8
print(B);
#Retrive the second element of the vector
print((B[2]));
#Retrive the second and fifth element 
print(B[c(2, 5)]);
#Retrive all elements of the vector except the 2nd value
print(B[-2]);
#Retrive elements of a vector using a logical vector
print(B[c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE )]);
#Retrive elements bigger than 5
print(B[B > 5]);
#Modify vector element
B[3] <- 9
print(B);
