x <- c(10, 45, 30, 50, 35)
y <- x >30
y
# returns a logical vector
#> x <- c(10, 45, 30, 50, 35)
#> y <- x >30
#> y
#[1] FALSE  TRUE FALSE  TRUE  TRUE

# find the ranger of numbers between 30 and 40

y <- x > 30 &  x < 40
y
#> y <- x > 30 &  x < 40
#> y
#[1] FALSE FALSE FALSE FALSE  TRUE

y <- c(20, 15, 25, 65, 5)
x < y
#> y <- c(20, 15, 25, 65, 5)
#> x < y
#[1]  TRUE FALSE FALSE  TRUE FALSE

# find which element of x is greater than 30
which(x>30)
# returns a vecotr of the indicies of the true values
#> which(x>30)
#[1] 2 4 5

x[which(x>30)]
#> x[which(x>30)]
#[1] 45 50 35

