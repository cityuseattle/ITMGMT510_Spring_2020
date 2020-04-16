#create an list 
A <- list("a", "b", 1, 2);
#print the element inside A list
print(A);
#print the type of A
print(typeof(A));
#print each element data type
print(str(A));
#print the length of A 
print(length(A));
#print the first element of A list 
print(A[1]);
#match the value using a vector
print(A[c(TRUE, FALSE, FALSE, FALSE)]);
#change the value
A[[2]] <- "n";
print(A);
#delete an value 
A[[2]] <- NULL;
print(A);
