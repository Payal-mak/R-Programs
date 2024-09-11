#ggplot2 library

library(ggplot2)


#PROG-1
#Scatter plot
ggplot(mtcars, aes(x= factor(cyl), y=hp)) + geom_point()
ggplot(mtcars, aes(x= factor(cyl), y=hp, color = factor(cyl))) + geom_point()
ggplot(mtcars, aes(x= factor(cyl), y=hp, shape = factor(cyl))) + geom_point()
ggplot(mtcars, aes(x= factor(cyl), y=hp, shape = factor(cyl),shape = factor(cyl))) + geom_point()

#bar chart
ggplot(mtcars, aes(x= factor(cyl))) + geom_bar()
ggplot(mtcars, aes(x= factor(cyl), color = factor(cyl))) + geom_bar()
ggplot(mtcars, aes(x= factor(cyl), fill = factor(cyl))) + geom_bar()

#histogram
ggplot(mtcars, aes(x = mpg)) + geom_histogram(binwidth = 0.1)

#pie
data("mtcars")
cyl<-data.frame(cyl)
ggplot(cyl, aes(x="",y=Freq,fill=Var1))+geom_bar(stat="identity")+
  coord_polar(theta="y")+labs(title="piechart")
