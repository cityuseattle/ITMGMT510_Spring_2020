#Create three vectors x,y,z
x <- c(1, 2, 3);
y <- c(4, 5, 6);
z <- c(7, 8, 9);

#Create Matrix by Coloum Binding
A <-cbind(x, y, z);

rownames(A) <- c("a", "b", "c");

print(A); 