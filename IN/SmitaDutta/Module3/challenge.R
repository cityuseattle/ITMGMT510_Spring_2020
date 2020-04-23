
# declare three vectors
x <-c(1, 2, 3);
y <-c(4, 5, 6);
z <-c(7, 8, 9);

#create 3x3 matrix from the vectors and name the rows
mat <- matrix(c(x,y, z),nrow=length(x),dimnames =list(c("a", "b", "c"), c("x", "y", "z")));
print(mat)