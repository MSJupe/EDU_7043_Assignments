#bring in data
CDC_ART<-read.csv("C:/Users/MShiplettJupe/Desktop/Desc & Comp Stats/Data Sets/CDC 2016 Fertility Clinic Success Rates Report.csv", stringsAsFactors= F)
myvars<-c("TotNumberCycles", "FshNDCycle2", "TotUsingFrozenEggs", "Diag_OvulatoryRate", "Diag_MaleRate")
cdc2<-CDC_ART[myvars]
names(cdc2)

#Structure of Data
names(CDC_ART)
str(CDC_ART)


#Mean, Meadian, and Range
summary(CDC_ART$"TotNumberCycles", na.rm = TRUE)
summary(CDC_ART$"FshNDCycle2", na.rm = TRUE)
summary(CDC_ART$"TotUsingFrozenEggs", na.rm = TRUE)
summary(CDC_ART$"Diag_OvulatoryRate")
summary(CDC_ART$"Diag_MaleRate", na.rm = TRUE)

#Mode
mode_TotalCycles<-table(CDC_ART$TotNumberCycles)
View(mode_TotalCycles)
mode_FrozenEggs<-table(CDC_ART$TotUsingFrozenEggs)
View(mode_TotalCycles)
mode_OvulFactor<-table(CDC_ART$Diag_OvulatoryRate)
View(mode_OvulFactor)
mode_MaleFactor<-table(CDC_ART$Diag_MaleRate)
View(mode_MaleFactor)
mode_FshNDCycle2<-table(CDC_ART$FshNDCycle2)
View(mode_FshNDCycle2)

# Standard Deviation, Variance
sd(CDC_ART$"Diag_MaleRate")
var(CDC_ART$"Diag_MaleRate")

#BoxPlot and Histogram
boxplot(CDC_ART$"Diag_MaleRate", main= "Box Plot of Male Factor Infertility")
hist(CDC_ART$Diag_MaleRate, ylab="Number of Clinics", xlab= "Rate of Male Factor Infertility", main="Histogram of US Fertility Clinics: Male Factor Infertility")

