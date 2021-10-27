x <- c(10, 45, 30, 50, 35, 40, 80)
35 %in% x
#returns true, checks if 35 is in x

y <- 30
y %in% x
# returns true because y is in x

y <- c(30, 35)
y %in% x
# returns a logical vector of T, T because both values are in the vector

