setwd("~/CE2D-2/git/Propstat")
library(formattable)
library(ggplot2)

df <- read.csv("imdbm.csv")
View(df)

income <- df$income
avg_vote <- df$avgVote

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

mean(avgVote)
median(avgVote)
getmode(avgVote)
sd(avgVote)
summary(avgVote)

mean(income)
median(income)
getmode(income)
sd(income)
summary(income)

hist(
  income,
  main = "รายได้รวมทั่วโลก",
  xlab = "รายได้(ล้านดอลลาร์สหรัฐ)",
  ylab = "จำนวนภาพยนตร์(เรื่อง)",
  las = 1
  )

hist(
  avg_vote,
  main = "คะแนนโหวตเฉลี่ย",
  xlab = "คะแนนโหวตเฉลี่ย(คะแนน)",
  ylab = "จำนวนภาพยนตร์(เรื่อง)",
  las = 1
  )

boxplot(avg_vote, main = "คะแนนโหวตเฉลี่ย",
        ylab =  "คะแนนโหวตเฉลี่ย(คะแนน)",
        las=1
        )


boxplot(income, main = "รายได้รวมทั่วโลก",
        ylab = "รายได้(ล้านดอลลาร์สหรัฐ)",
        las=1
)

stem(avg_vote)
stem(income)

plot(avg_vote,income,xlab="คะแนนโหวตเฉลี่ย(คะแนน)",
     ylab = "รายได้(ล้านดอลลาร์สหรัฐ)",
     las = 1,
     main = "คะแนนโหวตเฉลี่ย & รายได้รวมทั่วโลก",
     cex.lab=1.5,  cex.main=1.5
     )

boxplot(avg_vote)
boxplot.stats(avg_vote,coef=5)$out

boxplot(income)
boxplot.stats(income,coef=5)$out

ggplot(df,aes(x=avg_vote,y=income))+geom_point()+
      geom_smooth(method="gam",se=F, size = 1.5, alpha = 1)+
      xlab("คะแนนโหวตเฉลี่ย(คะแนน)") + ylab("รายได้(ล้านดอลลาร์สหรัฐ)")+
        theme(axis.title = element_text(size = 20))
