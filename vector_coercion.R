x <- c(10, 'John', 20, 30.75)
x
# a vector of multiple types, coercion occurs implicitly, all elements are considered strings or character class

x<- c(10, TRUE)
x
# the logical value T is turned into a 1

x <- c('John', TRUE)
x
# the logical values can be coerced into strings
# can excplicitly coerce a vector

x <- 0:5
x
class(x)

as.logical(x)
#> as.logical(x)
#[1] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
# 0 is treated as false everything else is true

as.character(x)
#> as.character(x)
#[1] "0" "1" "2" "3" "4" "5"

x <- c('John', 'Jack', 'Bob')
x
class(x)

as.numeric(x)
#> as.numeric(x)
#[1] NA NA NA
#Warning message:
#  NAs introduced by coercion 

as.logical(x)
#> as.logical(x)
#[1] NA NA NA