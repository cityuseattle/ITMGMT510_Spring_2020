library(ggplot2)
library(ggplot2movies)
df<-movies<-movies[sample(nrow(movies),1000),]
#print(head(df))

pl<- ggplot(df,aes(x=rating))

#Geometry layer
print(pl +geom_histogram(binwidth=0.1,aes(y=..density..))+geom_density(color='red'))