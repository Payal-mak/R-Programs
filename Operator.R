#R- Operator
#Arithmetic Operator
v<-c(2,5.5,6)
t<-c(8,3,4)
print(v+t)
print(v-t)
print(v*t)
print(v/t)  #quotient
print(v%%t) #modulo(remainder)
print(v%/%t) #integer division (quotient with no decimals)
print(v^t)

#Relational operator
v<-c(2,5,5,6,9)
v<-c(8,2,5,14,9)
print(v>t)
print(v<t)
print(v>=t)
print(v<=t)
print(v==t)
print(v!=t)

#Logical operator
v<-c(3,1,TRUE,2+3i)
t<-c(4,1,FALSE,2+3i)
print(v&&t)
print(v|t)
print(!v)

v=101
t=121
print(v&&t)
print(v||t)

#Assignment operator
v1<-c(3,1,TRUE,2+3i) #left assignment
v2<<-c(3,1,TRUE,2+3i) 
v3=c(3,1,TRUE,2+3i) 
print(v1) 
print(v2) 
print(v3) 

c(3,1,TRUE,2+3i)->v1 #right assignment
c(3,1,TRUE,2+3i)->>v2
print(v1)
print(v2)

#Miscellaneous operator
v<-2:8
print(v)
v1<-8
v2<-12
t<-1:10
print(v1 %in% t)
print(v2 %in% t)

m= matrix(c(2,6,5,1,10,4),nrow=2,ncol=3)
t=m%*% t(m) #calculate multiplication of matrix and its transpose
print(m)
print(t(m)) #print transpose of matrix m
print(t) 
