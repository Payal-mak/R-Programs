#Matrix
#Program - 1
matrix <- matrix(c(1,2,3,4,5,6),nrow = 2, ncol = 3, byrow = TRUE)
print(matrix)

#Program - 2
print(matrix[1,2])

#Program - 3
print(matrix[1,])

#Program - 4
print(matrix[,1])


c = matrix(c(1:6),nrow = 2)
print(matrix)
c[c==5] <- 100
print(c)
