#EXP-11
#polynomial regression model
poly_model=lm(formula = Salary~poly(
  dataset$Years.experienced,10,raw=TRUE),data=dataset)

ggplot(data=dataset,aes(dataset$Years.experienced,Salary))+
  geom_point()+stat_smooth(method = lm,
                           formula = y~poly(x,10,raw=TRUE))+geom_point(aes(x=dataset$Years.experienced,
                                                                          y=dataset$Salary))+
  geom_line(aes(x=dataset$Years.experienced,
                y=predict(linear_reg,newdata = dataset)),color="red")

