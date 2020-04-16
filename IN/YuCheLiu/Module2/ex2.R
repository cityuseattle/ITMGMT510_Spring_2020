#the trim argument allows that system ignore 25 percent of each side of the data.
v <-mean(c(-100, 0, 1, 2, 3, 6, 50, 73), trim = 0.25)

print(v)