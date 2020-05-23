library(ggplot2)
library(ggplot2movies)

df<-movies<-movies[sample(nrow(movies),1000),]

#print(head(df))

#data&aesthetics layer
#build a histogram out of rating column
pl<-ggplot(df,aes(x=rating))

#geometry layer
#adding the data&aesthetics layer with geom layer
print(pl + geom_histogram(binwidth=0.1,color='red',fill='pink',alpha=0.4,linetype='dotted')
         + xlab('Movie Ratings')+ ylab('Occurences')+ggtitle('Movie Ratings'))