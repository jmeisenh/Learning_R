
x <- c(10, 45, 30, 50, 35, 40, 80)
# square brackets call the index of a vector
x[1]

# negative number in brackets exclude an element of a vector
x[-2]
# series calls are inclusive
x[3:7]
# can use a vector to call vector elements
x[c(1, 3, 4)]

length(x)
# all non existant vecotr indices are NA
x[10]
# can reassign vector elements
x[2] <- -8
x
# if elemeent is assigned outside of vector length, NA values will fill vector
x[10] <- 8
x
# can use excluded index assignment
x[-3] <- -8
x
# can use a logical vector to call specific elements of another vecotr (input masking)
x <- c(10, 45, 30, 50, 35, 40, 80)
y <- c(T, F, T, T, F, T, F)
x[y]
# if a logical vector mask is shorter than vector, the elements will be repeated
y <- c(T, F, T)
x[y]

# use a for loop to access elements in sequence

for(i in 1:length(x))
  print(x[i])

for(i in x)
  print(i)


