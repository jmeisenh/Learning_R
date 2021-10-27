#read.table() arguments
# file: name of file
#header: logical value (default is false)
#sep: seperator (default is space)
#nrows: number of rows (default is entire file)
#skip, number of rows to skip, default is 0
mydata <- read.table('data.txt')
mydata
           V1  V2     V3         V4    V5
1       state abb region population total
2     Arizona  AZ   West    6392017   232
3  California  CA   West   37253956  1257
4    Delaware  DE  South     897934    38
5     Florida  FL  South   19687653   669
6     Georgia  GA  South    9920000   376
7    Illinois  IL  North   12830632   364
8        Iowa  IA  North    3046355    21
9      Kansas  KS  North    2853118    63
10  Louisiana  LA  South    4533372   351

mydata <- read.table('data.txt', header = T)
mydata
       state abb region population total
1    Arizona  AZ   West    6392017   232
2 California  CA   West   37253956  1257
3   Delaware  DE  South     897934    38
4    Florida  FL  South   19687653   669
5    Georgia  GA  South    9920000   376
6   Illinois  IL  North   12830632   364
7       Iowa  IA  North    3046355    21
8     Kansas  KS  North    2853118    63
9  Louisiana  LA  South    4533372   351


# importing csv

mydata <- read.csv('sample.csv')
mydata

# importing rds files

mydata <- readRDS('chicago.rds')
mydata

#importing from internet
url.show('http://softlect.in/datasets/sbuxPrices.csv')

mydata <- read.table('http://softlect.in/datasets/sbuxPrices.csv', sep = ',', header = T)
mydata

# import from clipboard

mydata <- read.table('clipboard', header = T)
mydata


# exporting data
id <- c(101, 102, 103)
name <- c('Bob', 'Alice', 'John')
marks <- c(78.25, 59.45, 63.85)
students <- data.frame(id, name, marks)
students
write.csv(students, file = 'students.csv')
