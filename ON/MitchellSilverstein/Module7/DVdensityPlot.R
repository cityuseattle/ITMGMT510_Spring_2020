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
print(pl + geom_histogram(binwidth=0.1,aes(y=..density..))
   + geom_density(color='red'))