x <- 10
typeof(x)
# create  VEWCTOR
x <- c(10, 20, 30, 40)
typeof(x)
assign('y', c(50, 60, 70))
y

z <- c('a', 'b', 'z')
z
typeof(z)

i <- c(TRUE, TRUE, FALSE, TRUE)
typeof(i)
i
# all elements of vectors must have all the same type 

y <- 1:6
y
z <- seq(1,6)
z
# c function can concat 2 vectors
x< - c(10, 20 , 30)
y <- c(3.5, 8.45)
z <- c(x, y)
z
# multiassignment also works
z <- y <- x <- c(1.25, 5, 3)
z
y
x

# empty vectors
x <- vector()
x

x <- vector('numeric', length = 4)
x

x <- vector('logical', length = 4)
x

x <- vector('character', length = 4)
x

x <- c(1.5, 3.25, 8.75)
x
length(x)
