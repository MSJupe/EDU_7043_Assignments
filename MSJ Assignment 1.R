x<-c(5, 10, 15, 20, 25, 30)
y<-c(-1, NA, 75, 3, 5, 8)
z<-5
x*z
y*z
x<-c(25,50,75,100,125,150)
y<-c(-5, NA, 375, 15, 25, 40)
print (x)
print (y)
y<-ifelse(is.na(y), (2.5), y)
print (y)
library(readr)Assignment_1 <- read_csv("https://raw.githubusercontent.com/mattdemography/EDU_7043/master/Data/Assignment_1.csv")
names(Assignment_1)
print(Assignment_1)
summary(Assignment_1$Murder)
summary (Assignment_1$Vcrime)
newengmurder<-c(6.3, 2.0, 3.9, 1.6, 3.6, 3.9)
summary (newengmurder)