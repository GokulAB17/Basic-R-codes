
#Practice codes
spdi<- read.csv("C:/Users/Administrator.Gokulbhasi/Desktop/DataScience/Assignments/Q9_a.csv")

skewness(spdi$speed)
kurtosis(spdi$speed)
skewness(spdi$dist)
?skewness
kurtosis(spdi$dist)
?kurtosis
hist(spdi$speed)
hist(spdi$dist)

spwtprob <- read.csv("C:/Users/Administrator.Gokulbhasi/Desktop/DataScience/Q9_b.csv")
View(spwtprob)
library(modeest)
install.packages("modeest")
skewness(spwtprob$SP)
skewness(spwtprob$WT)
install.packages("timeDate")
library(timeDate)
kurtosis(spwtprob$SP)
kurtosis(spwtprob$WT)

crs<- read.csv("C:/Users/Administrator.Gokulbhasi/Desktop/DataScience/Cars.csv")
View(crs)
hist(crs$MPG)
skewness(crs$MPG)
m<-mean(crs$MPG)
s<-sd(crs$MPG)
View(m)
pnorm(38,m,s)
pnorm(40,m,s)
val<- pnorm(50,m,s)-pnorm(20,m,s)
View(val)
qqnorm(crs$MPG)
qqline(crs$MPG)

wc.at <- read.csv("C:/Users/Administrator.Gokulbhasi/Desktop/DataScience/wc-at.csv")
View(wc.at)
qqnorm(wc.at$Waist)   
qqline(wc.at$Waist)
skewness(wc.at$Waist)
kurtosis(wc.at$Waist)
hist(wc.at$Waist)

qqnorm(wc.at$AT)   
qqline(wc.at$AT)
skewness(wc.at$AT)
kurtosis(wc.at$AT)
hist(wc.at$AT)



qt(0.97,1999)
qt(0.99,1999)
qt(0.98,1999)

qnorm(0.99)
qnorm(0.97)
qnorm(0.6)

qt(0.975,24)
qt(0.98,24)
qt(0.995,24)

qt(0.975,17)
pt(-0.4714,17)
qnorm(0.99)
1-pnorm(50,45,8)
pnorm(30,38,6)*400
qnorm(0.9995, mean = 0, sd = 1)

cinorm <- function(p = 0.95, mean = 0, sd = 1){
  q <- c((1 - p)/2, p + (1 - p)/2)
  z <- qnorm(q)
  x <- mean + sd*z
  x
}
qnorm(0.995)
pnorm(80,75,15)-pnorm(90,75,15)
pnorm(90,75,15)-pnorm(80,75,15)
qnorm(0.975)
qnorm(0.05)

pnorm(45,50,4)
pnorm(55,50,4)
1-pnorm(55,50,2.86)
qnorm(0.975)
qnorm(0.05)
