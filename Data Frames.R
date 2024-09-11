#Data frames
#Program - 1
data_frame <- data.frame(name=c("name1","name2","name3"), age = c(18,19,20), education = c(TRUE,FALSE,TRUE))
print(data_frame)
data_frame <- data.frame(name<-c("name1","name2","name3"), age<- c(18,19,20), education<- c(TRUE,FALSE,TRUE))
print(data_frame)
print(data_frame$name)
print(data_frame$age)
print(data_frame$education)
data_frame$language <- c("english","Gujarati","Punjabi")
print(data_frame)

#Program - 2
# R program to create dataframe

# creating a data frame
friend.data <- data.frame(
  friend_id = c(1:5), 
  friend_name = c("Sachin", "Sourav", 
                  "Dravid", "Sehwag", 
                  "Dhoni"),
  stringsAsFactors = TRUE
)
# print the data frame
print(friend.data)
