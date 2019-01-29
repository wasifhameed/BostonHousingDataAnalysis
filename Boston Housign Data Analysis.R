library(MASS)
library(ggplot2)
library(dplyr)

#Q-A

Boston 

nrow(Boston)
ncol(Boston)


M= cor(Boston)
corrplot(M,method="circle")

#Question B

ggplot(Boston, aes(x=dis, y=crim)) + geom_point(shape=1)
ggplot(Boston, aes(x=rad, y=crim)) + geom_point(shape=1)
ggplot(Boston, aes(x=rm, y=medv)) + geom_point(shape=1)
ggplot(Boston, aes(x=indus, y=nox)) + geom_point(shape=1)
ggplot(Boston, aes(x=black, y=crim)) + geom_point(shape=1)


#Question -C



crimeRate = Boston$crim

barplot(crimeRate)


ggplot(Boston, aes(x=rad, y=crim)) + geom_point(shape=1)

ggplot(Boston, aes(x=zn, y=crim)) + geom_point(shape=1)
ggplot(Boston, aes(x=medv, y=crim)) + geom_point(shape=1)
ggplot(Boston, aes(x=age, y=crim)) + geom_point(shape=1)
ggplot(Boston, aes(x=lstat, y=crim)) + geom_point(shape=1)

#Q -d 



boxplot(Boston,usecols=TRUE) 


filter(Boston, Boston$crim>50)
arrange(Boston,ptratio)

var(Boston)

#Qe
sum(Boston$chas)

#Qf
median(Boston$ptratio)



#Qg
filter(Boston, Boston$medv== min(Boston$medv))


#Qh
count(filter(Boston, Boston$rm>7))
count(filter(Boston, Boston$rm>8))
filter(Boston, Boston$rm>8)


write.csv(Boston,"Boston.csv")



