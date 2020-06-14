#create a list
A <- list("a", "b", 1, 2);
print(A);

#To see the element data type or the data structure
print(str(A));
#TO see the data structure type of the list
print(typeof(A));
#get the length or number of elements in the list
print(length(A));
#retrieve the values in the list using an integer
print(A[1]);
#retrieve the values in a list using an integer vector
print(A[c(1:2)]);
#retrieve the values using a logical vector
print(A[c(TRUE, FALSE, FALSE,FALSE)]);
#Modify a value or element in the list
A[[2]] <-"n";
print(A);
#to delete an element or value in a list
A[[2]] <- NULL;
print(A);
print(length(A));