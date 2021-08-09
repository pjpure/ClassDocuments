setwd("~/CE2D-2/git/Propstat")
library(ggplot2)
library(tidyverse)
library(broom)
library(psych)
library(modelr)
library(ggfortify)
library(datasets)
library(dplyr)

df <- read.csv("imdbm.csv")

income <- df$income
avg_vote <- df$avg_vote

x=avg_vote
y=income

x=c(1,1.5,2,2.5,3,3.5,4,4.5,5,6)
y=c(20,25,32,32,33,30,31,34,33,35)
cuY = c()
summ = 0
for(i in 1:20){
  summ = summ+y[i]
  cuY[i]=summ
}


df=data.frame(x,y)

xbar <- mean(x)
ybar <- mean (y)
n <- length(y)

relation = lm(y~x)
relation
summary(relation)

ggplot(df,aes(x=x,y=y))+geom_point()+
  geom_smooth(method="lm",se=F, size = 1, alpha = 1)+
  theme(axis.title = element_text(size = 20))

SSxy <- sum(x*y) - n*xbar*ybar; SSxy
SSxx <- sum (x^2) - n*xbar^2;SSxx
SSyy <- sum(y^2) - n*ybar^2;SSyy

b <- SSxy/SSxx;a
a <- ybar-b*xbar;b


r <- SSxy/(sqrt(SSxx)*sqrt(SSyy));r

rSq <- SSxy^2/(SSyy*SSxx);rSq


pdfX = dnorm(x=x,mean = mean(x),sd=sd(x))

plot(x,pdfX,col = "dodgerblue4" ,main = "Probability Density Function of Average score",ylab="Probability density")
lines(smooth.spline(x,pdfX), col='red',lwd=2)
polygon(x, pdf, col="light green", border=FALSE)


cdfY = pnorm(q=y,mean = mean(y),sd=sd(y))

plot(y,cdfY,col = "dodgerblue4" ,main = "Cumulative Probability Function of Movie income",ylab="Cumulative Probability")
lines(smooth.spline(y,cpfY), col='red',lwd=2)

Syx = sqrt((sum(y^2)-23.2143*sum(y)-2.2078*sum(x*y))/8)
Syx
