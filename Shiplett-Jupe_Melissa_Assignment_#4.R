#bring in data
GSS <- read_csv("C:/Users/MShiplettJupe/Desktop/GSS.csv")
View(GSS)

#creating subsets
whitesubset<-subset(GSS, GSS$RACE ==1)
blacksubset<-subset(GSS, GSS$RACE ==2)
otherracesubset<-subset(GSS, GSS$RACE ==3)
malesubset<-subset(GSS, GSS$SEX ==1)
femalesubset<-subset(GSS, GSS$SEX ==2)

#remove invalid responses
GSS<-ifelse(GSS$SEXORNT==2 | GSS$SEXORNT==9 | GSS$SEXORNT==8, NA, GSS$SEXORNT)
GSS<-ifelse(GSS$MARHOMO==9 | GSS$MARHOMO==8, NA, GSS$MARHOMO)

summary(GSS$SEXORNT)
sd(GSS$SEXORNT)
var(GSS$SEXORNT)

#I need to fix the error coming up for MARHOMO but have no idea how. This is the information I'd like to use in the overall project.

#description of variables
summary(whitesubset$SEXORNT)
summary(blacksubset$SEXORNT)
summary(otherracesubset$SEXORNT)
summary(malesubset$SEXORNT)
summary(femalesubset$SEXORNT)

sd(whitesubset$SEXORNT)
sd(blacksubset$SEXORNT)
sd(otherracesubset$SEXORNT)
sd(malesubset$SEXORNT)
sd(femalesubset$SEXORNT)

var(whitesubset$SEXORNT)
var(blacksubset$SEXORNT)
var(otherracesubset$SEXORNT)
var(malesubset$SEXORNT)
var(femalesubset$SEXORNT)

#t-test
t.test(malesubset$SEXORNT, femalesubset$SEXORNT)

#ANOVA for more than two variables
fit<-aov(GSS$SEXORNT ~ as.factor(GSS$RACE)) #Opinions of Sexual Orientation is our dependent variable
summary(fit)  #Let's look at the results

#Where are these differences?
TukeyHSD(fit)
