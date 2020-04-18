#Create a list
A <- list("a","b",1,2);
print(A);

#To see the eleement data type or the data structure
print(str(A))

#To see the data structure type of the list
print(typeof(A));

#To get the length or number of elements in the list
print(length(A))

#Retrieve the values in the list using an integer
print(A[1])

#Retrieve the valuesin a list using an integer vector
print(A[c(1:2)]);

#Retrieve the values using a logical vector
print(A[c(TRUE,FALSE,FALSE,FALSE)]);

#Modify a value or element in the list
A[[2]] <- "n";
print(A);

#To delete an element or value in a list
A[[2]] <- NULL;
print(A)