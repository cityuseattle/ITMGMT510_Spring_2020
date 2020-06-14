library(ggplot2) 
library(ggplot2movies) 

df <- movies<-movies[sample(nrow(movies), 1000), ] 

# print(head(df)) 

#DATA & AESTHETICS Layer 
#Build a histogram out of rating column 
pl<- ggplot(df,aes(x=rating)) 

#Geometry layer 
#Adding the data& AESTHETICS layer with geom layer 
pl2 <- pl + geom_histogram(binwidth=0.1,aes(fill=..count..)) + xlab('Movie Ratings')+ ylab('Occurences')

print(pl2 + scale_fill_gradient('count',low='blue',high='red'))