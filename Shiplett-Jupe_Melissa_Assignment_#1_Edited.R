x<-c(5, 10, 15, 20, 25, 30)
y<-c(-1, NA, 75, 3, 5, 8)
z<-5
x*z
y*z
xz<-c(25,50,75,100,125,150)
yz<-c(-5, NA, 375, 15, 25, 40)
print (xz)
print (yz)
y<-ifelse(is.na(y), (2.5), y)
print (y)
library(readr)
Assignment_1 <-read_csv(file="https://raw.githubusercontent.com/mattdemography/EDU_7043/master/Data/Assignment_1.csv")
names(Assignment_1)
print(Assignment_1)
summary(Assignment_1$Murder)
Assignment_1$State[1:10]
NewEngMurder<-subset(Assignment_1,State=="CT"|State=="ME"|State=="MA"|State=="NH"|State=="RI"|State=="VT")
summary (NewEngMurder)
summary (Assignment_1$Vcrime)

#Great Job. Try to make more comments to yourself throughout your code. It will be a helpful habbit to get into.
#120 out of 100