x <- c(4.258, -3.853, 5.457, 7.504)
abs(x)
# returns absolute value

ceiling(x)
#> ceiling(x)
#[1]  5 -3  6  8
# rounds all values up

floor(x)
#> floor(x)
#[1]  4 -4  5  7
# rounds all numbers down

round(x)
#> round(x)
#[1]  4 -4  5  8

round(x, 2)
#> round(x, 2)
#[1]  4.26 -3.85  5.46  7.50
# 2nd argument is number of decimal places

trunc(x)
#> trunc(x)
#[1]  4 -3  5  7
# truncates to the integer

exp(x)
log(x)
# log is actually ln
log(x, base=2)
#or
log2(x)
# or 
log10(10)

x<- c(4, 3, 6)
factorial(x)
#> factorial(x)
#[1]  24   6 720