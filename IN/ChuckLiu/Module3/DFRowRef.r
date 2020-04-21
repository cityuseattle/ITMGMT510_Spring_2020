df <- mtcars
print(head(df));

#returns the first line of the data frame
rfirst <- df[1,];
print(rfirst);

#get the first line of the data frame as a vector
rfirstv <- as.numeric(as.vector(df[1,]));
print(rfirstv);

