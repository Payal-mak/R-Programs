
EXP-10
#PROG-3
dataset=read.csv("D:/Sem 2 Sumbjects/IR R Studio/salary_regression.csv")
install.packages("caTools")
install.packages("ggplot")
library(caTools)
#develop a linear regression model
linear_reg=lm(formula = Salary ~ dataset$Years.experienced,
              data=dataset)
intercept=coef(linear_reg)[1]
weights=coef(linear_reg)[2]
year=3
y=weights*year+intercept
library(ggplot2)
#visualization
ggplot()+geom_point(aes(x=dataset$Years.experienced,
                        y=dataset$Salary))+
  geom_line(aes(x=dataset$Years.experienced,
                y=predict(linear_reg,newdata = dataset)),color="red")

