#Create a vector
A <- c(1,2,3,4,5,6);
print(A);
print(typeof(A));
print(class(A));
print(length(A));


#Create a vector using:
B <- 1:8
print(B);

#Retrieve the second elem of the vector
print(B[2]);

#Retrieve the second  and fifth elem of the vector
print(B[c(2, 5)]);

#Retrieve all elem of the vector
print(B[-2]);

#Retrieve elem of the vector using logical vector
print(B[c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE)]);

#Retrieve all elem bigger than 5
print(B[B > 5]);

#Modify vector elem
B[3] <- 9
print(B)