A <- matrix(c(1, 2, 3, 4, 5, 6, 8, 9, 1), nrow=3, ncol=3, byrow=T)
B <- matrix(c(3, 1, 2, 4, 2, 1, 5, 1, 2), nrow=3, ncol=3, byrow = T)
A
B
[,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
[3,]    8    9    1
> B
[,1] [,2] [,3]
[1,]    3    1    2
[2,]    4    2    1
[3,]    5    1    2

A + B
# matrix addition and subtration performs element by element
[,1] [,2] [,3]
[1,]    4    3    5
[2,]    8    7    7
[3,]   13   10    3

A * B
# not standard matrix multiplication, but individual element multiplication
[,1] [,2] [,3]
[1,]    3    2    6
[2,]   16   10    6
[3,]   40    9    2

#perform matrix multiplication
A %*% B
[,1] [,2] [,3]
[1,]   26    8   10
[2,]   62   20   25
[3,]   65   27   27

t(A)
# transpose the matrix
[,1] [,2] [,3]
[1,]    1    4    8
[2,]    2    5    9
[3,]    3    6    1

solve(A)
# creates the inverse of matrix A
[,1]       [,2]       [,3]
[1,] -1.8148148  0.9259259 -0.1111111
[2,]  1.6296296 -0.8518519  0.2222222
[3,] -0.1481481  0.2592593 -0.1111111


A <- matrix(1:9, 3, 3)
A
[,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9

rowSums(A)
#sums each row
[1] 12 15 18

colSums(A)
# sums each column
[1]  6 15 24


rowMeans(A)
# returns a vector of the mean of each row
4 5 6

apply(A, 1, sum)
# args: 1st, matrix, row/col, arithmatic action
12 15 18