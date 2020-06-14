#create a list
A <- list("a", "b", 1,2)
print(A)

#To see the element data type 
print(str(A))

#To see the data struture type of list
print(typeof(A))

#To get the length or number of elements
print(length(A))

#Retrieve the values in the list
print(A[1])

#Retrieve the values in the list
print(A[c(1:2)])

#Retrieve values in a list
print(A[c(1:2)])

#Retrieve the values
print(A[c(TRUE, FALSE, FALSE, FALSE)])

#Modify a value 
A[[2]] = "n"
print(A)

#To delete an element or value in list
A[[2]] <- null
print(A)