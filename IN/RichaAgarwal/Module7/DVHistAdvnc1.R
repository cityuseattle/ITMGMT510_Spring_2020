library(ggplot2)
library(ggplot2movies)

df = movies = movies[sample(nrow(movies), 1000),]

#print(head(df))


#Build histogram out of rating column
p1 = ggplot(df, aes(x=rating))
#Geometry layer
p12 = p1 + geom_histogram(binwidth=0.1,aes(fill=..count..)) 
+ xlab('Movie Ratings')+ ylab('Occurances')  #Adding the data

print(p12 + scale_fill_gradient('Count', low='blue',high='red'))