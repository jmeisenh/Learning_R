# create a matrix all all elements 4, with 3 columns and 3 rows

m <- matrix(4, 3, 3)
m
#> m <- matrix(4, 3, 3)
#> m
#[,1] [,2] [,3]
#[1,]    4    4    4
#[2,]    4    4    4
#[3,]    4    4    4

# create a diagonal matrix
m <- diag(1, 3, 3)
m
#> m
#[,1] [,2] [,3]
#[1,]    1    0    0
#[2,]    0    1    0
#[3,]    0    0    1

m <- diag(1:3)
m
#> m <- diag(1:3)
#> m
#[,1] [,2] [,3]
#[1,]    1    0    0
#[2,]    0    2    0
#[3,]    0    0    3

# can also be used to extract elements of a matrix

diag(m)
#> diag(m)
#[1] 1 2 3

m <- matrix(4, 3, 3)
diag(m)
#> m <- matrix(4, 3, 3)
#> diag(m)
#[1] 4 4 4

m <- matrix(c(2, 3, 4, 0, 1, 2, -1, -3, 5), nrow=3, ncol=3, byrow=TRUE)
m

# can assign row and columns names
rownames(m) <- c(1, 2, 3)
colnames(m) <- c('A', 'B', 'C')
m
#> m
#   A  B C
#1  2  3 4
#2  0  1 2
#3 -1 -3 5

m <- matrix(c(2, 3, 4, 0, 1, 2), nrow=3, ncol=2, byrow=TRUE)


# matrix indexing

A <- matrix(c(2, 3, 4, 0, 1, 2, -1, -2, 5, 8, 6, -3), nrow=4, ncol=3, byrow=T)
A
A[1, 2]
# accesses the first row and second column, # returns 3
A[1,]
# returns entire first rpw
A[,2]
# returns entire second column

A[nrow(A),]
#nrow is the number of rows in this case, 4, therefore returning the last row of the matrix

A[-3,]
# will eliminate the 3rd row

#change elements of matrix
A[2, 3] <- 9
A

# can use sequences 
A[1:3, 1:2]
# returns first 3 rows and first 2 columns

A[c(1, 3),]
# accesses the first and 3rd row

# to delete the second column of matrix
A = A[, -2]
A
[,1] [,2]
[1,]    2    4
[2,]    0    9
[3,]   -1    5
[4,]    8   -3

A[5, 5] = 10
#cannot access or assign values outside of limits of the matrix
Error in `[<-`(`*tmp*`, 5, 5, value = 10) : subscript out of bounds

B <- rbind(A, c(10, 11, 12))
B
# rbind concats to a new row

B <- matrix(c(10, 11, 12), nrow =1, ncol=3, byrow=T)
c <- rbind(A, B)
c
[,1] [,2] [,3]
[1,]    2    3    4
[2,]    0    1    2
[3,]   -1   -2    5
[4,]    8    6   -3
[5,]   10   11   12

# cbind conbines vector as columns

B <- matrix(c(10, 11, 12, 13), nrow=1, ncol=4, byrow=T)
c <- rbind(A, B)
# r bind must match number of columns

