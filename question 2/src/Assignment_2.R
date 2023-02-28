#importing data
data<-read.csv("StudentsPerformance.csv")
attach(data)

#histogram
hist(reading.score,main="histogram in between reading and writing score",
     xlab = "reading score",col = "pink")

#scatter plot       
plot(writing.score,reading.score,main = "plot in between writing and reading scores",
     xlab = "writing.score",ylab = "reading.score",col = "red")

#qqplot
qqplot(math.score,reading.score,main = "plot in between math and reading scores",
       xlab = "math score",ylab = "reading score",col = "green")

#pairs plot
pairs(~math.score+writing.score+reading.score,data=data, 
      main = "Contrast between math, writing and reading scores")

#sunflower plot
sunflowerplot(reading.score,math.score,main="Sunflower plot between reading and math",
              xlab="reading" , ylab="math", col="pink")
