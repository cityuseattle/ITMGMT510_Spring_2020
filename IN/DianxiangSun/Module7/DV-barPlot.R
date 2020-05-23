library(ggplot2)

df<-mpg
print(head(df))
#data&aesthetics layer
#counts(or sum of weights)
#the x axis will be te class col
#and the y axis will be the counts of 
#the occurance of each elements in the class col
g<-ggplot(df,aes(class))

#geometry layer
print(g+geom_bar()) #adding the data& aesthetics layer with geom layer