rollno <- c(101, 102, 103)
snames <- c('John', 'Bob', 'Alice')
marks <- c(78.25, 59.45, 63.85)
students <- list(rollno, snames, marks)
students[1]
[[1]]
[1] 101 102 103
# students[n], returns the nth row
students[[1]]
[1] 101 102 103
# using a single square brackets returns a list, double square brackets return the elements in the list
# access element 102

students[[1]][2]
[1] 102
# returns the elements of the first row, and the second value in the list

students[[1]][2] <-109
#assigns the value 109 to position 1,2
students
[[1]]
[1] 101 109 103

[[2]]
[1] "John"  "Bob"   "Alice"

[[3]]
[1] 78.25 59.45 63.85

