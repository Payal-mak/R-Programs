#EXPERIMENT - 10 Linear Regression
#Program - 1
x <- c(2,4,6,8,10,11,23,22,41)
y <- c(1,3,5,7,9,14,17,18,19)
plot(x,y)
abline(lm(y~x))
abline(lm(x~y))
abline(v = 16, col = "hotpink")

dataset = read.csv("D:/Sem 2 Sumbjects/IR R Studio/salary_regression.csv")
install.packages("caTools")
library(caTools)

#develop a linear regression model
linear_reg = lm(formula = Salary - dataset$i..Years,experienced,data = dataset)

intercept = coef(linear_reg)[1]
weight = coef(linear_reg)[2]69

year = 3
y = weights*year+intercept

library(ggplot2)
#visualization
ggplot()+geom_point( aes(x=dataset$i..Years.experienced,y=dataset$Salary))+ geom_line( aes(x = dataset$i..Years))