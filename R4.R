# sub() and gsub() functions
# sub(old, new, string)
string <- "Welcome to R Programming Session. R is a Programming Language"
sub("R", "Python", string)
# gsub(old, new, string)
string <- "Welcome to R Programming Session. R is a Programming Language"
gsub("R", "Python", string)

# strsplit function
# syntax : strsplit(string, delimiter)
string <- "Welcome to R Programming Session"
strsplit(string, " ")
string <- "Welcome/to/R/Programming/Session"
strsplit(string, "/")
string <- "Welcome to 4th R Programming Session on 04-11-2017"
strsplit(string, "[0-9]+")

# Substring Function 
# Syntax:  substr(text, start, stop)

# Extracting values with substring function in R
substring("Welcome to R Programming Session", 12, 32)
# Replacing values with substring function in R
string <- "Welcome_to R Programming Session"
substring(string, 8, 8) = " "
string
# Replacement with recycling
string <- c("Welcome", "to", "R", "Programming", "Session")
substring(string, 2, 3) = c("@", "#")
string

# with and within function
df <- data.frame(a=1:5,b=2:6)
df
with(df, {c <- a + b; df;})
df$c <- with(df, c <- a + b)
df
within(df, {c <- a + b; df;})


# aggregate() function 
data(iris)
View(iris)
# Aggregate function in R with mean summary statistics
agg_mean <- aggregate(iris[, 1:4], by = list(iris$Species), FUN = mean, na.rm = TRUE)
# the above code takes first 4 columns of iris data set and groups by "species" by computing the mean for each group
agg_mean

# by() function
# syntax : by(data, data$byvar, FUN)
by(iris$Sepal.Length,list(iris$Species),mean)

# stack and unstack
View(iris)
stack_iris <- stack(iris[, 1:4])
View(stack_iris)
unstack_iris <- unstack(stack_iris)
View(unstack_iris)

# Match()
v1 <- c(2,5,6,3,7)
v2 <- c(15,16,7,3,2,7,5)

match(v1, v2)
match(v1, v2, nomatch = 0)
match(v1, v2, incomparables = 2)
v1 %in% v2

# Sorting a data frame in R can be done with order() function
# Sort data frame by 1 column
data("iris")
View(iris)
# Sort by single column
View(iris[order(iris$Sepal.Length), ])

# Sort data frame by 2 column
data(iris)
# Sort by more than one column
View(iris[order(iris$Sepal.Length, iris$Petal.Length), ])

# Sort one column by descending and other column by ascending
data("iris")
View(iris[order(iris$Sepal.Length, -iris$Petal.Length), ])

# Correlation
# Correlation of vector
x <- c(0,1,1,2,3,5,8,13,21,34)
y <- log(x+1)
y
cor(x,y)

# Correlation of vector with NA
x <- c(0,1,1,2,3,5,8,13,21,NA)
y <- log(x+1)
cor(x,y, use = "complete.obs")

?cor
# Correlation matrix of data frame
data("mtcars")
View(mtcars)
x <- mtcars[1:4]
x
y <- mtcars[10:11]
y
cor(x, y)

# Correlation of Matrix 
matA<-matrix(1:9,3,3, dimnames = list(c("r1", "r2", "r3"), c("c1", "c2", "c3")))
matA
matB<-matrix(c(10,11,12,15,16,20,21,26,28),3,3, dimnames = list(c("r4", "r5", "r6"), c("c4", "c5", "c6")))
matB
cor(matA,matB)

# Rank()
x <- c(2,7,1,-17,NA,Inf,35,21,7)
# NAs as last
rank(x)
# NAs as First
rank(x,na.last = FALSE)
# NAs as Last
rank(x,na.last = TRUE)
# NAs are removed
rank(x,na.last = NA)
# NAs are ranked as NA
rank(x,na.last = "keep")
# Ties="Average"
rank(x,na.last = TRUE,ties.method = "average")
# Ties="First"
rank(x,na.last = TRUE,ties.method = "first")
# Ties="random"
rank(x,na.last = TRUE,ties.method = "random")
# Ties="min"
rank(x,na.last = TRUE,ties.method = "min")
# Ties="max"
rank(x,na.last = TRUE,ties.method = "max")

# range()
# for a numeric vector
x <- c(1,2.3,2,3,4,8,12,43,-4,-1)
range(x)
# with NA
y<- c(x,NA)
y
range(y)

range(y,na.rm=TRUE)
# for a character vector
x<-c("a","h","x","i","j")
range(x)

# round() & signif()
# Signif() function is similar to round function, but digits argument in signif() function denotes the total digits, not the digits after decimal
round(c(1.234,2.342,4.562,5.671,12.345,14.567),digits = 1)
signif(125.2395, digits=6)

# floor() & ceiling()
floor(c(1.234,2.342,4.562,5.671,12.345,14.567,-4.245))
ceiling(c(1.234,2.342,4.562,5.671,12.345,14.567,-4.245))

# trunc()
trunc(c(1.234,2.342,-4.562,5.671,12.345,-14.567))
?trunc

# min() & max()
data("mtcars")
min(mtcars$mpg, na.rm = T)
max(mtcars$mpg, na.rm = T)

max(mtcars$cyl)

# mean, median,
mean(mtcars$mpg, na.rm = T)
median(mtcars$mpg, na.rm = T)

# mode
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
v <- c(20,10,20,30,10,20,30,40,10,50,50,30,20,30)
unique(v)
table(v)
getmode(v) # considers 1st as mode

Mode = function(x){ 
  ta = table(x)
  tam = max(ta)
  if (all(ta == tam))
    mod = NA
  else
    if(is.numeric(x))
      mod = as.numeric(names(ta)[ta == tam])
  else
    mod = names(ta)[ta == tam]
  return(mod)
}
Mode(v)

library(modeest)
mfv(v)

#install.packages("BiocManager")
#library("BiocManager")
#BiocManager::install("genefilter")



# sum
x <-c(1.234,2.342,-4.562,5.671,12.345,-14.567,NA)

sum(x,na.rm=TRUE)

# difference() with lag=2
diff(c(2,3,5,18,4,6,4))

#difference function in R with lag=1 and differences=2
# diff(c(2,3,5,18,4,6,4),lag=1,differences=2)

# which, which.max, which.min
# Which function in R, returns the indices of the logical object when it is TRUE
# which on letters
which(letters=="z")
which(letters=="s")

# which on vector
x <- c(1,3,5,7,8)
which(x==3)
which(x>=7)

# which() on data frame
data("iris")
View(iris)
which(iris$Petal.Width == 0.2)

which.max(iris$Petal.Width)
iris[101, ]
which(iris$Petal.Width == max(iris$Petal.Width))

which.min(iris$Petal.Width)
iris[10, ]
which(iris$Petal.Width == min(iris$Petal.Width))


# subset()
data("mtcars")

newdata <- subset(mtcars,mpg>=30, select=mpg:drat)  
newdata

# nrow, ncol, dim, dimnames
nrow(mtcars)
row.names(mtcars)
ncol(mtcars)
colnames(mtcars)
names(mtcars)
dim(mtcars)
dimnames(mtcars)

# head, tail
head(mtcars, 10)
tail(mtcars, 5)

# any & all
v1 <- c(3,4)
v2 <- c(7,4)
t <- c(1,2,3,4,5,6,7,8)
any(v1 %in% t)
all(v2 %in% t)
# on data frame
any(mtcars$cyl %in% 4)
all(mtcars$cyl %in% 4)
all(mtcars$am %in% c(1,0))

# Rowsums ,colsums rowmeans and Columnmeans 
data("iris")
rowSums(iris[,-5])
colSums(iris[,-5])
rowMeans(iris[,-5])
colMeans(iris[,-5])

# unique rows
data("iris")
iris = rbind(iris, iris[146:150,])
iris
unique(iris)

# no. of rows
data("iris")
length(iris)
length(iris[,1])

# coercing data types
x <-c(1.234,2.342,-4.562,5.671,12.345,-14.567)
class(x)
x = as.data.frame(x)
class(x)
x = as.list(x)
class(x)
x = as.data.frame(x)
class(x)
x = as.character(x)
class(x)
x = as.factor(x)
class(x)
y <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
class(y)
y = as.factor(y)
class(y)


# predictions on test data
# predict()

# scatter diagram is used to plot to continuous vars.
plot(iris$Petal.Length, iris$Petal.Width)

# correlation & partial correlation
cor(iris$Petal.Length, iris$Petal.Width)
cor2pcor(cor(iris[,-5])) # corpcor pkg required

#pairs()
pairs(iris[,-5])


# reading & writing of files
# read.csv()
# write.csv()

# normalize function 0 - 1
normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
iris_norm <- lapply(iris[,-5], normalize)
iris_norm = as.data.frame(iris_norm)
View(iris_norm)
class(iris_norm)
iris_norm <- as.data.frame(iris_norm)

# scale function
data(iris)
iris_scale <- lapply(iris[, -5], scale)
View(iris_scale)

# subset
data(mtcars)
newdata<-subset(mtcars,mpg>=30)   
newdata

# attach & detach
data("iris")

attach(iris)
mean(iris$Sepal.Length)
mean(Sepal.Length)
Sepal.Length
detach(iris)
Sepal.Length
iris$Sepal.Length

# dummy vars
fc = read.csv("E:\\Datasets\\Decision Trees\\Fraud_check.csv", header = T)
View(fc)
str(fc)
library(dummies)
fc_dummy = dummy.data.frame(fc, sep="_")
View(fc_dummy)
