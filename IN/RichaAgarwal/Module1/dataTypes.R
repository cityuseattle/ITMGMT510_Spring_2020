#Data types are the types or kind of information or data a variable is holding.
#For example,
#A <- "abc"
#B <- 1.2
#In R, data types are automatically determined. 
#Because of the quotations surrounding the values, variable A is of the character data type, 
#while variable B is of the numeric data type.

A = "ABC"   #Assign A to  "ABC" as character
print(class(A))  #Here class tell you the type of data of ASsigned value

A = 123  #Assign A to 123 as numeric
print(class(A))  #Here class tell you the type of data of ASsigned value

A = TRUE #Assign A to boolean expression
print(class(A)) #Here class tell you the type of data of ASsigned value

#In R we can assign several types of value or data type with single varibale.