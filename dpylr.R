library(dplyr)
mydata <- read.csv('murders.csv')
dim(mydata)
str(mydata)
mydata[c(1, 4, 6)]
names(mydata)
#returns the names of the columns

mysubdata <- select(mydata, state:population)
#returns columns from state to population inclusive
mysubdata

mysubdata <- select(mydata, state, population, murders, gunmurders)


mysubdata <- select(mydata, -abb)
#eleminates the abb column
mysubdata

mysubdata <- filter(mydata, murders>100)
mysubdata
mysubdatamurders <- select(mysubdata, state, murders, population)
mysubdatamurders

mysubdata <- filter(mydata, murders>100 & population < 10000000)
mysubdata

mysubdata <- arrange(mydata, desc(murders))
#sort the date by a column
mysubdata
mysubdatamurders <- select(mysubdata, state, murders)
mysubdatamurders
head(mysubdatamurders, 5)
tail(mysubdatamurders, 5)


mydata <- rename(mydata, abbrivation=abb)
# how to rename columns
names(mydata)
mysubdata <- select(mydata, state, abbrivation, murders)
mysubdata

mysubdata <- mutate(mydata, ratio = murders/population)
# mutate can create a new column with an operation or function
names(mysubdata)
mysubdataratio <- select(mysubdata, state, population, murders, ratio)
mysubdataratio

mysubdata <- transmute(mydata, ratio = murders/population)
# transmute drop all non mutated columns
mysubdata


mysubdata <- group_by(mydata, region)
mysubdata
summarise(mysubdata, sum(murders))
summarise(mysubdata, mean(murders))

mysubdata <- arrange(mydata, murders)
mysubdatamurders <- select(mysubdata, state, murders)
mysubdatamurders
# can combine the previous two functions with the pipeline
arrange(mydata, murders) %>% select(state, murders)
# returns the top 3 murder states
arrange(mydata, desc(murders)) %>% select(state, murders) %>% head(3)
