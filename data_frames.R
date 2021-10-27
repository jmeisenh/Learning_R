id <- c(101, 102, 103)
name <- c('Bob', 'Alice', 'John')
marks <- c(78.25, 59.45, 63.85)
students <- data.frame(id, name, marks)
students
   id  name marks
1 101   Bob 78.25
2 102 Alice 59.45
3 103  John 63.45

slist <- list(id, name, marks)
slist
[[1]]
[1] 101 102 103

[[2]]
[1] "Bob"   "Alice" "John" 

[[3]]
[1] 78.25 59.45 63.45

#indexing
# access the second row
students[2,]
id  name marks
2 102 Alice 59.45

# access the 2nd and third row
students[2:3,]
id  name marks
2 102 Alice 59.45
3 103  John 63.45

# access the entire first column
students[,1]
# returns a vector
[1] 101 102 103

students[2:3, 1:2]
id  name
2 102 Alice
3 103  John

students[2]
# just returns a column
name
1   Bob
2 Alice
3  John

students[c(1,3), c(2:3)]
# returns first and third row, and 2-3 column
name marks
1  Bob 78.25
3 John 63.45

students[[3]][1]
# returns the element of column 3 row 1
[1] 78.25

students$marks
# returns a vector names marks
[1] 78.25 59.45 63.45


students$marks[3]
#access the 3rd element of the column marks
[1] 63.45

students[[3]][2] <- 24.00
# changes the value of column 3 row 2
students
id  name marks
1 101   Bob 78.25
2 102 Alice 24.00
3 103  John 63.45

report <- subset(students, marks > 60)
# creates a dataframe of students meeting a certain set of logical conditions
report
id name marks
1 101  Bob 78.25
3 103 John 63.85

report <- subset(students, marks > 60 & id < 103)
report
id name marks
1 101  Bob 78.25
# third argument of subset function selects the columns to return
report <- subset(students, marks > 60, select  = c(name, marks))
report
name marks
1  Bob 78.25
3 John 63.85

report <- subset(students, marks > 60, select  = name:marks)
# can use the range or sequence method as well
report
name marks
1  Bob 78.25
3 John 63.85


students <- rbind(students, data.frame(id = 104, name = 'Jack', marks = 45.85))
# can use rbind to add rows or cbind for columns
students
id  name marks
1 101   Bob 78.25
2 102 Alice 59.45
3 103  John 63.85
4 104  Jack 45.85

studentstable <- edit(students)
studentstable

x <- c(10, 4, NA, 7, 15)
x
is.na(x)
[1] FALSE FALSE  TRUE FALSE FALSE

is.nan(x)
[1] FALSE FALSE FALSE FALSE FALSE

x <- c(10, 4, NA, 7, 15, NaN)
is.nan(x)
[1] FALSE FALSE FALSE FALSE FALSE  TRUE
is.na(x)
[1] FALSE FALSE  TRUE FALSE FALSE  TRUE

y <- is.na(x)
x[!y]
[1] 10  4  7 15

id <- c(101, 102, 103, 104, 105)
temperature <- c(25.8, 34.2, NA, 27.4, 20.5)
wind <- c(78, 59, 63, 40, 68)
humidity <- c(25, 45, 85, NA, 61)
weather <- data.frame(id, temperature, wind, humidity)
weather
id       temperature wind humidity
1 101        25.8   78       25
2 102        34.2   59       45
3 103          NA   63       85
4 104        27.4   40       NA
5 105        20.5   68       61

weatherNA <- complete.cases(weather)
weatherNA
# returns a logical vector by rows, this example the third and 4th row return false
[1]  TRUE  TRUE FALSE FALSE  TRUE

weather[weatherNA,]
id temperature wind humidity
1 101        25.8   78       25
2 102        34.2   59       45
5 105        20.5   68       61
