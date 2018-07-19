#1
z<-12
class(z)
#2
z <- c(12, FALSE)
class(z)
#3
m <- c(10,13, 15, 33)
n <- c(13, 22, 88, 110)
rbind(m, n)
#4
z <- list(22, "a", "c", FALSE)
z[[2]]
#5
z <- 10:40
y <- 3
z + y
#6
x <- c(117, 114,14, 15, 113, 112, 110)
x[x >= 100] <- 14
x
#7
install.packages("data.table")
library("data.table")
data<- fread("hw1_data.csv")
names(data)
#8
data[c(1:11,2)]

#9
nrow(data)
#10
data[c(1:7,2)]

#11
data[112,Wind]
data[47,Temp]
data[82,Solar.R]

#12
hw1 = read.csv('hw1_data.csv')
sub = subset(data,is.na(Ozone))
nrow(sub)
sub = subset(data,is.na(Solar.R))
nrow(sub)
sub = subset(data,is.na(Wind))
nrow(sub)
sub = subset(data,is.na(Temp))
nrow(sub)

#13
hw1 = read.csv('hw1_data.csv')
sub = subset(hw1, !is.na(Ozone), select = Ozone)
apply(sub, 2, mean)
sub = subset(hw1, !is.na(Wind), select = Wind)
apply(sub, 2, mean)
sub = subset(hw1, !is.na(Temp), select = Temp)
apply(sub, 2, mean)

#14
data = read.csv('hw1_data.csv')
sub = subset(data, Ozone > 26 & Temp > 80, select = Solar.R)
apply(sub, 2, mean)


#15
data = read.csv('hw1_data.csv')
sub = subset(data, Month == 8, select = Temp)
apply(sub, 2, mean)

#16
data = read.csv('hw1_data.csv')
sub = subset(data, Month == 5 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(data, Month == 6 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(data, Month == 7 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(data, Month == 8 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)
sub = subset(data, Month == 9 & !is.na(Ozone), select = Ozone)
apply(sub, 2, max)