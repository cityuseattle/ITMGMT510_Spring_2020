#In R and one variable's data type is numeric and one variable's data type is non-numeric, you will get the following error:
#> A <- 123;
#> B <- "aaa";
#> A + B;
#Error in A + B : non-numeric argument to binary operator

A = "123"
print(is.numeric(A))
print(is.character(A))

B = 2
A = as.numeric(A)  #as.numeric function to convert from character to numeric
print(A + B)    #with the help of as.numeric function we get a approprite output