library(ggplot2)
library(ggplot2movies)

df = movies = movies[sample(nrow(movies), 1000),]

#print(head(df))


#Build histogram out of rating column
p1 = ggplot(df, aes(x=rating))
#Geometry layer
print(p1 + geom_histogram(binwidth=0.1,color='red',fill='pink')) #Adding the data
