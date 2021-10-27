x <- c(10, 45, 30, 50)
x

x + 2
# returns a vector with all values increased by 2
#> x <- c(10, 45, 30, 50)
#> x
#[1] 10 45 30 50
#> x + 2
#[1] 12 47 32 52

x * 10
#> x * 10
#[1] 100 450 300 500

y <- c(5, 1, 2, 4)

x + y
# > y <- c(5, 1, 2, 4)
#> x + y
#[1] 15 46 32 54

y <- c(3, 1, 2)
x + y
#> y <- c(3, 1, 2)
#> x + y
#[1] 13 46 32 53
#Warning message:
#  In x + y : longer object length is not a multiple of shorter object length
# 