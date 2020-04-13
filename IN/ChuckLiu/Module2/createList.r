#Create a list
a <- list("a", "b", 1, 2);
print(a);

#To see the element data type or the data structure
print(str(a));

#To see the data structure type of the lsit
print(typeof(a));

#to get the length or number of elements in the list
print(length(a));

#Retrieve the values in the list using an integer
print(a[1]);

#Retrieve the values in a list using an integer vector
print(a[c(1:2)]);

#Retrieve the values using a logical vector
print(a[c(TRUE, FALSE, FALSE, FALSE)]);

#Modify a value or element in the list
a[[2]] <- "n"
print(a);

#Delete an element or value in a list
a[[2]] <- NULL;
print(a);
