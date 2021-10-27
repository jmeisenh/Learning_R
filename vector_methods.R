x< - c(10, 45, 30, 50)
# sums all vector values
sum(x)
# multiplies all vector values
prod(x)
# reverses the order of vector elements (does not change indicies)
rev(x)
# sorts the vecotr (does not change indicies) in asecding order
sort(x)
# sorts the vecotr (does not change indicies) in decreasing order
sort(x, decreasing = T)


y <- c(5, 1, 4, 3)
# can perform cross products
x %*% y
# or call a function
crossprod(x, y)
#> y <- c(5, 1, 4, 3)
#> x %*% y
#[,1]
#[1,]  365

# outerproduct of vectors
x %o% y
tcrossprod(x, y)
#> x %o% y
#[,1] [,2] [,3] [,4]
#[1,]   50   10   40   30
#[2,]  225   45  180  135
#[3,]  150   30  120   90
#[4,]  250   50  200  150