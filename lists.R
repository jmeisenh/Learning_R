x <- list(10, 'John', TRUE)
x
[[1]]
[1] 10

[[2]]
[1] "John"

[[3]]
[1] TRUE

# double square brackets are index values

rollno <- c(101, 102, 103)
snames <- c('John', 'Bob', 'Alice')
marks <- c(78.25, 59.45, 63.85)
students <- list(rollno, snames, marks)
students
[[1]]
[1] 101 102 103

[[2]]
[1] "John"  "Bob"   "Alice"

[[3]]
[1] 78.25 59.45 63.85

students <- list(c(101, 102), c('Bob'), c(78.25, 59.45, 63.85))
students
[[1]]
[1] 101 102

[[2]]
[1] "Bob"

[[3]]
[1] 78.25 59.45 63.85

