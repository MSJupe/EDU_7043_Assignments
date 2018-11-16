#Bring in Data
dat <- read_csv("C:/Users/MShiplettJupe/Desktop/GSS.csv")
names(dat)
str(dat)

#Let's Make some changes in the following variables
summary(dat$PARTYID) #PartyID

#What Are 9's and 8's? Looking at codebook, I should eliminate these from the analysis as leavign them in would skew my findings
#and give a false representation of people's party identification.
dat$PARTYID<-ifelse(dat$PARTYID==9 | dat$PARTYID==8, NA, dat$PARTYID)
summary(dat$PARTYID)


#Let me See how Party Identification Varies by Race, Sex, and Education.
dat$dem<-ifelse(dat$PARTYID==0 | dat$PARTYID==1, 1, 0)
dat$ind<-ifelse(dat$PARTYID==2 | dat$PARTYID==3 | dat$PARTYID==4 | dat$PARTYID==7, 1, 0)
dat$rep<-ifelse(dat$PARTYID==5 | dat$PARTYID==6, 1, 0)

#Check the Data
table(dat$dem)
table(dat$ind)
table(dat$rep)

#checking new tables against previous data. Check math in calculator.
table(dat$PARTYID)

#creation of new variable with 3 categories: Democrat, Independent, or Republican

dat$newpoly<-ifelse(dat$dem==1, 1, ifelse(dat$ind==1, 2, ifelse(dat$rep==1, 3, 0)))
table(dat$newpoly)
summary(dat$newpoly)

#Look at Sex variable
summary(dat$SEX)
table(dat$SEX)

#Look at variable - Sexual Orientation
summary(dat$SEXORNT)
table(dat$SEXORNT)

#remove invalid responses
dat$SEXORNT<-ifelse(dat$SEXORNT==9 | dat$SEXORNT==8, NA, dat$SEXORNT)
#Look at variable again
summary(dat$SEXORNT)
table(dat$SEXORNT)



#Create Contingency Table 1 is Dem, 2 is Ind, 3 is Rep
table(dat$SEXORNT, dat$newpoly)
table(dat$SEX, dat$SEXORNT)

#Cross Tabulation
library(gmodels)
CrossTable(dat$newpoly, dat$SEXORNT, prop.chisq =F) #it takes away x2 value leaving row, column, and individual percents.
chisq.test(dat$SEXORNT, dat$newpoly)

CrossTable(dat$SEX, dat$SEXORNT, prop.chisq =F) #it takes away x2 value leaving row, column, and individual percents.
chisq.test(dat$SEXORNT, dat$SEX)
