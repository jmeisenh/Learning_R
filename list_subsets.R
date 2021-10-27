rollno <- c(101, 102, 103)
snames <- c('John', 'Bob', 'Alice')
marks <- c(78.25, 59.45, 63.85)
students <- list('id'=rollno, 'name'=snames, 'scores'=marks)
students$id
students$id
[1] 101 102 103
students$scores


students[c(1, 3)]
$id
[1] 101 102 103

$scores
[1] 78.25 59.45 63.85

students[c('id', 'scores')]
$id
[1] 101 102 103

$scores
[1] 78.25 59.45 63.85

age <- list(c(19, 20, 18))

students <- c(students, 'age'=age)
students
$id
[1] 101 102 103

$name
[1] "John"  "Bob"   "Alice"

$scores
[1] 78.25 59.45 63.85

$age
[1] 19 20 18