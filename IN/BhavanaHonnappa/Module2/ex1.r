# it provides the length, sum, mean, median, var, sd, min, max rivers from preloaded data 
#length -> get or sets the length of a rivers.
#sum ->
#mean -> sum of the rivers and divide it with total number of values in rivers.
#median -> the middle most value of the rivers.
#var -> known as Variance calculates how far the rivers values are spread out in mean.
#sd -> knwon as Standard deviation, is to measure amount of variation in rivers. Also, this is simply the square root of variance.
#min -> gives minimum value of rivers
#max -> gives maximum value of rivers


v <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))

print(v)