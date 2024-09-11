#Exp - 8 Data visualiization Bar Plot, Pie Chart, Histogram , Scattered Plot
#Prog - 1(i) Bar Chart
data<- c(3,10,5,2,20)
barplot(data)

#Prog - 2(ii) Histogram
data <- c(1,2,3,4,5,6,7,8,9)
hist(data)

#Prog - 3(iii) Pie Chart
data<-c(10,20,30,40)
pie(data)

#Prog - 4(iv) Scatter Plot
par(mar = c(10, 10, 10, 10))
x<-c(1,2,3,4,5)
y<-c(1,2,3,4,5)
plot(x,y)

#Prog - 2 Loading and Creating graph using default
data("mtcars")
head(mtcars)
tail(mtcars)
nrow(mtcars)
ncol(mtcars)
?mtcars
summary(mtcars)
quantile(mtcars$wt)
quantile(mtcars$wt,c(.2,.4,.8))

hist(mtcars$hp)#histogram
barplot(mtcars$hp)#barchart
plot(mtcars$cyl,mtcars$hp)#scatterplot
#pie chart
cyl<-table(mtcars$cyl)
cyl
contribution<-round(100*cyl/sum(cyl),2)
contribution
pie(contribution,labels = contribution,col=rainbow(length(contribution)))
legend("topright",c("4","6","8"),fill=rainbow(length(contribution)))

