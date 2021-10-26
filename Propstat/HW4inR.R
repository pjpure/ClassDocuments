setwd("~/CE2D-2/git/Propstat")
library(ggplot2)
df <- read.csv("imdbm.csv")

income <- df$income
avg_vote <- df$avg_vote

mean(avg_vote)
sd(avg_vote)

rounds=50
nSample = 50
arraySampleAvg = c()
arraySampleMean = c()
arraySampleSD = c()

for(i in 1:rounds){
  sampleVote = sample(avg_vote,nSample)
  arraySampleAvg[i] = c(data.frame(sampleVote))
  arraySampleMean[i] = c(mean(sampleVote))
  arraySampleSD[i] = c(sd(sampleVote))
}

getCI <- function(cl,n,x){
  m <- mean(x)  # mean 
  s <- sd(x)  # standard deviation
  
  # 1.standard error (SE)
  se <- s / sqrt(n)
  # 2.z-score
  z <- qnorm(cl) 
  # 3.margin error
  me <- se * z
  # 4.confidence interval
  ci <- c(m - me, m + me)
  return(ci)
}

lowerOf90 = c()
upperOf90 = c()
meanOf90 = c()

for (i in 1:rounds) {
  lowerOf90[i] = getCI(0.90,nSample,arraySampleAvg[[i]])[1]
  upperOf90[i] = getCI(0.90,nSample,arraySampleAvg[[i]])[2]
  meanOf90[i] = arraySampleMean[i]
}

roundsArr = c(1:rounds)
d90 = data.frame(roundsArr,meanOf90,lowerOf90,upperOf90)

qplot(x    = meanOf90 ,
      y    = roundsArr,
      color = roundsArr,
      data = d90,main = "Confidence Interval (CI) of Mean : main",
      xlab = "x",
      ylab = "y") + 
  
  geom_errorbar(aes(
    xmin  = lowerOf90,
    xmax  = upperOf90,
    width = 1))+ geom_vline(xintercept = mean(avg_vote))
  
cl = c(0.9,0.95,0.99)
d = data.frame(
  CL = c("0.9","0.95","0.99"),
  Mean = c(sampleMean,sampleMean,sampleMean),
  lower = c(getCI(cl[1],50,sampleAvg)[1],getCI(cl[2],50,sampleAvg)[1],getCI(cl[3],50,sampleAvg)[1]),
  upper = c(getCI(cl[1],50,sampleAvg)[2],getCI(cl[2],50,sampleAvg)[2],getCI(cl[3],50,sampleAvg)[2])
)

qplot(x    = Mean ,
      y    = CL,
      color = CL,
      data = d,main = "Confidence Interval (CI) of Mean : ??????????????????????????????????????????????????????????????????????????????",
      xlab = "?????????????????????????????????????????????(???????????????)",
      ylab = "Confidence Level (CL)") + 
  
  geom_errorbar(aes(
    xmin  = lower,
    xmax  = upper,
    width = 0.2))+ geom_vline(xintercept = mean(avg_vote))




