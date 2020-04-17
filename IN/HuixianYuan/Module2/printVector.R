# create a vector
A <-c(1,2,3,4,5,6);

print(A);
print(typeof(A));
print(class(A));
print(length(A));

#create a vector using:
B<-1:8;
print(B);

#retrive the second element of the vector
print((B[2]));

#retrieve the second and fifth element
print(B[c(2,5)]);

#retrieve all elements of the vector except the 2nd value
print(B[-2]);

#retrieve elements of a vector using a logical vector
print(B[c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE)]);

# retrieve elements bigger than 5
print(B[B>5])

# modify vector element
B[3] <-9
print(B)
