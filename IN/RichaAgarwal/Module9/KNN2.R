library(ISLR)

print(str(Caravan))

print(summary(Caravan$Purchase))

print(any(is.na(Caravan)))

purchase = Caravan[,86]

standardized.Caravan = scale(Caravan[, -86])

print(var(standardized.Caravan[,1]))

print(var(standardized.Caravan[,2]))