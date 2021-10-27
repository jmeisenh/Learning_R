x <- c('Male', 'Female', 'Male', 'Male', 'Female')
x
# create x as a factor
x <- factor(c('Male', 'Female', 'Male', 'Male', 'Female'))
x
#[1] Male   Female Male   Male   Female
#Levels: Female Male

table(x)
#> table(x)
#x
#Female   Male 
#2      3 
# counts the number of each level of factor

