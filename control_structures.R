# IF structures

x <- 0
if ( x > 0){
  print('Positive Number')
} else if (x <0){
  print('Negative number')
} else {
  print ('zero number')
}
print('End of Program')


# IFELSE() structure
# 1st arg: condition, 2md arg: if true, 3rd arg: else 
X <- 5
ifelse(x>=0, 'Positive Number', 'Negative Number')

#write a function to determine if number is even or odd
x <- 3
ifelse(x %% 2 == 0, 'Even Number', 'Odd Number')


# for loops

for(i in 1:5) {
  print(i)
}

x <- 1:10
for(i in x){
  print(i)
}

x <- letters
for(i in x){
  print(i)
}

x <- letters
y <- x[1:5]

for(i in y){
  print(i)
}

# while loops
i <- 1
while(i <=5){
  print(i)
  i <- i + 1
}
print('End of Program')


# Repeat loops
i <- 1
repeat{
  print(i)
  if(i > 5)
    break
  i <- i + 1
}

for (i in 1:10) {
  if (i%%2 == 0)
    next
  print(i)
}







