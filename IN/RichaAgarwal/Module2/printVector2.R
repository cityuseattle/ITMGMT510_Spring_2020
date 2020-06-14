#Create a Vector using:

B <- 1:8
print(B)

#Retrieve a second element of vector

print((B[2]));

#retrieve the second and fifth element

print(B[c(2,5)]);

#Retrieve all elements of vector expect 2 element

print(B[-2])

#Retrieve elements of vector using a logical vector

print(B[c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE)])

#Retrieve elements bigger than 5

print(B[B > 5])

#Modify vector element
B[3] <- 9
print(B)