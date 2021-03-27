setwd("~/CE2D-2/git/Propstat")

df <- read.csv("imdbm.csv")

income <- df$income
avg_vote <- df$avg_vote


pdfIncome = dnorm(x=income,mean=mean(income),sd = sd(income))

plot(income,pdfIncome,col = "dodgerblue4" ,main = "Probability Density Function of Movie income",ylab="Probability density"
     ,xlab = "รายได้(ล้านดอลลาร์สหรัฐ)")
lines(smooth.spline(income,pdfIncome), col='red',lwd=2)



pdfAvgVote = dnorm(x=avg_vote,mean = mean(avg_vote),sd=sd(avg_vote))

plot(avg_vote,pdfAvgVote,xlim = c(0,10),col = "dodgerblue4" ,main = "Probability Density Function of Average score",ylab="Probability density"
     ,xlab = "คะแนนโหวตเฉลี่ย(คะแนน)")
lines(smooth.spline(avg_vote,pdfAvgVote), col='red',lwd=2)
polygon(avg_vote, pdf, col="light green", border=FALSE)



cpfIncome = pnorm(q=income,mean = mean(income),sd=sd(income))

plot(income,cpfIncome,col = "dodgerblue4" ,main = "Cumulative Probability Function of Movie income",ylab="Cumulative Probability"
     ,xlab = "รายได้(ล้านดอลลาร์สหรัฐ)")
lines(smooth.spline(income,cpfIncome), col='red',lwd=2)


cpfAvgVote = pnorm(q=avg_vote,mean = mean(avg_vote),sd=sd(avg_vote))

plot(avg_vote,cpfAvgVote,xlim = c(0,10),col = "dodgerblue4" ,main = "Cumulative Probability Function of Average score",ylab="Cumulative Probability"
     ,xlab = "คะแนนโหวตเฉลี่ย(คะแนน)")
lines(smooth.spline(avg_vote,cpfAvgVote), col='red',lwd=2)

      