#install.packages("ggplot2",repos = 'http://cran.us.r-project.org')

#install.packages("ggplot2movies")

library(ggplot2)
library(ggplot2movies)
df <- movies <- movies[sample(nrow(movies), 1000), ]

#print(head(df))

#Data & Aesthetics Layer
#Build a histogram out of rating column
pl<- ggplot(df,aes(x=rating))

#Geometry layer
#Adding the data & Aesthetics layer with geom layer
p12<- (pl + geom_histogram(binwidth=0.1,aes(fill=..count..))
   + xlab('Movie Ratings')+ ylab('Occurences'))

#scale_fill_gradient('Label',low=color1,high=color2)
print(p12 + scale_fill_gradient('Count',low='blue',high='red'))