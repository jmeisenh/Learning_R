# matrix is a 2-d vector are constructed columnwise
# nrow # or rows
# ncol # number of columns

m <- matrix(nrow=2, ncol=3)
m
#> m
#[,1] [,2] [,3]
#[1,]   NA   NA   NA
#[2,]   NA   NA   NA

dim(m)
# returns the shape of matrix
#> dim(m)
#[1] 2 3

m <- matrix(c(1, 2, 3, 4, 5, 6))
m
#> m
#[,1]
#[1,]    1
#[2,]    2
#[3,]    3
#[4,]    4
#[5,]    5
#[6,]    6
# matrix function defaults to creating columns

m <- matrix(c(1, 2, 3, 4, 5, 6), nrow=2, ncol=3)
m
#[,1] [,2] [,3]
#[1,]    1    3    5
#[2,]    2    4    6

m <- matrix(c(1, 2, 3, 4, 5, 6), nrow=2, ncol=3, byrow=TRUE)
m
#> m
#[,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6


# can use dimensionality method to assign a vector to a matrix
m <- c(1, 2, 3, 4, 5, 6)
m
#dim(m) <- c(3,2)
#> dim(m) <- c(3,2)
#> m
#[,1] [,2]
#[1,]    1    4
#[2,]    2    5
#[3,]    3    6

m <- matrix(1:6, nrow=2, ncol=3)
m

m <- matrix(c(2, 3, 4, 0, 1, 2, -1, -2, -3, 5, 4, 3), nrow=4, ncol=3, byrow=TRUE)
m
dim(m)
nrow(m)
ncol(m)
length(m)
