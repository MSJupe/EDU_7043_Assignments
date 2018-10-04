#bring in data
CDC_ART<-read.csv("C:/Users/MShiplettJupe/Desktop/Desc & Comp Stats/Data Sets/CDC 2016 Fertility Clinic Success Rates Report.csv", stringsAsFactors= F)
subset<-c("TotUsingFrozenEggs", "Diag_OvulatoryRate", "Diag_MaleRate")
cdc2<-CDC_ART[subset]
names(cdc2)

#Describe central tendencies of three variables
summary(cdc2$TotUsingFrozenEggs)
summary(cdc2$Diag_OvulatoryRate)
summary(cdc2$Diag_MaleRate)

#find mode of three variables
mode_FrozenEggs<-table(cdc2$TotUsingFrozenEggs)
View(mode_FrozenEggs)
mode_OvulFactor<-table(cdc2$Diag_OvulatoryRate)
View(mode_OvulFactor)
mode_MaleFactor<-table(cdc2$Diag_MaleRate)
View(mode_MaleFactor)

#Describe variables through variation
var(cdc2$TotUsingFrozenEggs)
var(cdc2$Diag_OvulatoryRate)
var(cdc2$Diag_MaleRate)

#Show variable relationship to normality using histogram and q-q plot. 

#I'm Making a Fake Data Set that appoximates normality
ex<-rnorm(10000, mean=0, sd=1)
summary(ex)
h<-hist(ex)
xfit<-seq(min(ex), max(ex), length=40)
yfit<-dnorm(xfit, mean=mean(ex), sd=sd(ex))
yfit<-yfit*diff(h$mids[1:2])*length(ex)
lines(xfit, yfit)

#Let's Look at our two variables. I'm creating a function for the steps above. You don't have to do this, but it can be helpful.
Dist_lines<-function(x){
  h<-hist(x)
  xfit<-seq(min(x), max(x), length=40)
  yfit<-dnorm(xfit, mean=mean(x), sd=sd(x))
  yfit<-yfit*diff(h$mids[1:2])*length(x)
  lines(xfit, yfit)}


#Describe Normality of 3 Variables using histogram and q-q plots.
hist(cdc2$TotUsingFrozenEggs)
Dist_lines(cdc2$TotUsingFrozenEggs)
qqnorm(cdc2$TotUsingFrozenEggs); qqline(cdc2$TotUsingFrozenEggs)
hist(cdc2$Diag_OvulatoryRate)
Dist_lines(cdc2$Diag_OvulatoryRate)
qqnorm(cdc2$Diag_OvulatoryRate); qqline(cdc2$Diag_OvulatoryRate)
hist(cdc2$Diag_MaleRate)
Dist_lines(cdc2$Diag_MaleRate)
qqnorm(cdc2$Diag_MaleRate); qqline(cdc2$Diag_MaleRate)
