#ISLR: Intro to Statistiacal Learning with R (textbook)
#Validation set example with Auto Datatset

library(ISLR)
library(MASS)
library(boot)
set.seed(1)

help("sample")
train=sample(392,196)
train

#subset option of linear regression model
help("lm")
lm.fit<- lm(mpg~horsepower,data=Auto, subset = train)

#use predict() to estimate the response for all 392 pbservations
# mean() to calculate the MSE of the 196 observations
#[-train] selects only the observations not in the traning set
help("attach")
attach(Auto)
help("mean")
mean((mpg-predict(lm.fit,Auto))[-train]^2)
# therefore the estimated test MSE fro the linear regression is ...

#use poly() to estimate test error for the quadratic and cubic regression
#polynominal

#Quadratic
lm.fit2<-lm(mpg~poly(horsepower,2),data=Auto, subset=train)
mean((mpg~predict(lm.fit2,Auto))[-train]^2)
lm.fit2 <- lm(mpg~poly(horsepower,2), data = Auto, subset = train) # Quadratic 
mean((mpg-predict(lm.fit2,Auto))[-train]^2) 

#Cubic
lm.fit3 <- lm(mpg~poly(horsepower,3), data = Auto, subset = train) # Cubic
mean((mpg-predict(lm.fit3,Auto))[-train]^2)



# Different training set
set.seed(2)
train = sample(392,196)
lm.fit <- lm(mpg~horsepower, data = Auto, subset = train)
mean((mpg-predict(lm.fit,Auto))[-train]^2)
# the error rate is 23.29
lm.fit2 <- lm(mpg~poly(horsepower,2), data = Auto, subset = train) # Quadratic 
mean((mpg-predict(lm.fit2,Auto))[-train]^2) 
# the error rate is 18.90
lm.fit3 <- lm(mpg~poly(horsepower,3), data = Auto, subset = train) # Cubic
mean((mpg-predict(lm.fit3,Auto))[-train]^2)












