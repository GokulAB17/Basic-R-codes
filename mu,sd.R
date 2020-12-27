#Import mba dataset

mba <- read.csv("C:/Users/Administrator.Gokulbhasi/Desktop/DataScience/mba.csv")
View(mba)



barplot(mba$gmat)


hist(mba$gmat)
hist(mba$workex)
mode(mba$workex)
?mode

boxplot(mba$gmat)
boxplot(mba$workex)
boxplot(mba$gmat, horizontal = T)

mean(mba$workex)
sd(mba$workex)

mean(mba$gmat)
sd(mba$gmat)

skewness(mba$gmat)
skewness(mba$workex)


kurtosis(mba$workex)
kurtosis(mba$gmat)

# normal distribution
pnorm(680,711,29)
?pnorm
pnorm(740,711,29)-pnorm(697,711,29)


# qq plots
qqnorm(mba$gmat)
qqline(mba$gmat)
qqnorm(mba$workex)
qqline(mba$workex)

#standardise / normalise data
s<- log(mba$workex) #transform data
qqnorm(logtran)
qqline(logtran)

#confidance interval
standardised_gmat<-scale(mba$gmat)
View(standardised_gmat)

# z value
qnorm(0.975) # for 95%
qnorm(0.95)# for 90%
qnorm(0.995) # for 99%

# t value
qt(0.975,139)
