library(dplyr)
mydata <- read.csv('murders.csv')
mysubdata <- select(mydata, state, population, murders)

barplot(mysubdata$population,
        xlab = 'states',
        ylab = 'population',
        main = 'States vs Population',
        names.arg = mysubdata$state,
        col = 'blue')

barplot(mysubdata$murders,
        xlab = 'states',
        ylab = 'murders',
        main = 'States vs murders',
        names.arg = mysubdata$state,
        col = 'blue')

mysubdatasort <- arrange(mydata, desc(murders))
myhighdata <- head(mysubdata, 5)
barplot(myhighdata$murders,
        xlab = 'states',
        ylab = 'murders',
        main = 'States vs murders',
        names.arg = myhighdata$state,
        col = 'blue')


mydata <- read.csv('murdersmini.csv')
mydata
myseldata <- select(mydata, state, murders)
barplot(myseldata$murders, horiz = T,
        xlab = 'Murders',
        ylab = 'States',
        main = 'States vs murders',
        names.arg = myseldata$state,
        col = 'blue')

myseldata <- mutate(mydata, popu=population/10000)
names(myseldata)
myseldata <- myseldata[c(1, 3, 4)]
barplot(myseldata$popu)
mymatrix <- data.matrix(myseldata)
mymatrix
mymatrixtrans <- t(mymatrix)
mymatrixtrans
barplot(mymatrixtrans,
        xlab = 'States',
        main = 'Population vs murders',
        col = c('blue', 'red'),
        names.arg = myseldata$state)
legend('topleft', c('Population', 'Murders'), fill = c('blue', 'red'))


mydata <- read.csv('GEStock.csv')
names(mydata)
mysubdata <- select(mydata, Date, Price)
hist(mysubdata$Price,
     xlab='Stock Price',
     main= 'Stocks Data',
     col = 'blue',
     border = 'red',
     breaks = 20)

mydata <- read.csv('murders.csv')
mysubdata <- select(mydata, state, population, murders)
plot(mysubdata$population, mysubdata$murders,
     xlab = 'Population',
     ylab = 'Murders',
     main = 'population vs Murders',
     col = 'red',
     pch = 20)

plot(mysubdata$murders, type='l')


mysubdata <- select(mydata, state, population, murders, region)
boxplot(mysubdata$murders ~ mysubdata$region,
        xlab = 'region',
        ylab = 'murders',
        main = 'Regions V murders',
        col = 'red',
        border = 'blue',
        notch = T)
par(mfrow=c(2,2))
mydata <- read.csv('murdersmini.csv')
myseldata <- mutate(mydata, popu=population/10000)
names(myseldata)
myseldata <- myseldata[c(1, 3, 4)]
barplot(myseldata$popu, xlab = 'States', ylab = 'Population', main = 'State V Population', col = 'blue', names.arg = myseldata$state)
barplot(myseldata$murders, xlab= 'States', ylab = 'Murders', col = 'blue',
        main = 'State vs Murders', names.arg = myseldata$state)
plot(myseldata$popu, myseldata$murders,
     xlab = 'Population', ylab = 'Murders',
     main = 'Population Vs. Murders',
     col = 'red', pch = 20)
