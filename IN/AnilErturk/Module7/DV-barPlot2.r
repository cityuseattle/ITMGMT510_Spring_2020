library(ggplot2) 

df <- mtcars 

print(head(df)) 

#DATA & AESTHETICS Layer
pl <- ggplot(data=df,aes(factor(cyl), mpg)) 

#Geometry layer 
#Adding the data& AESTHETICS layer to geom layer 
print(pl+ geom_boxplot() + coord_flip()) 
