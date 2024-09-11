A=read.csv("D:/Sem 2 Sumbjects/IR R Studio/Shark Tank US dataset_Final.csv")
library(ggplot2)

#1. which season is having the overall highest deal in terms of amount?
A$Total.Deal.Amount[is.na(A$Total.Deal.Amount)]=0
Season=A$Season.Number[which(A$Total.Deal.Amount == max(A$Total.Deal.Amount))]
Season

# no 2
A$Deal.Amount <- as.numeric(gsub("[$,]", "", A$Deal.Amount))
max_deals <- A[which.max(A$Deal.Amount), ]
max_deals


# no 3
#which are the top 10 deals in the shark tank?
A$Deal.Amount <- as.numeric(gsub("[$,]", "", A$Total.Deal.Amount))
sorted_deals <- A[order(-A$Total.Deal.Amount), ]
top_10_deals <- head(sorted_deals, 10)
print(top_10_deals)

# no 4
#top - 3 industries with highest deal in shark tank
A$Deal.Amount <- as.numeric(gsub("[$,]", "", A$Deal.Amount))

sorted_industry_deals <- industry_deals[order(-industry_deals$Deal.Amount), ]
top_3_industries <- head(sorted_industry_deals, 3)
print(top_3_industries)

# no 5
city_counts <- table(A$City)
sorted_city_counts <- sort(city_counts, decreasing = TRUE)
top_5_cities <- names(sorted_city_counts)[1:5]
print(top_5_cities)

#no.6
state_counts <- table(A$Pitchers.State)
sorted_counts <- sort(state_counts, decreasing = TRUE)
top_3_states <- names(sorted_counts)[1:3]
print(top_3_states)

#no.7
ind <- aggregate(Startup.Name ~ Industry, data = A, FUN = function(x) length(unique(x)))
print (ind)

#no.8
gen <- table(A$Pitchers.Gender)
print (gen)

#no.9
max <- aggregate(Deal.Amount ~ Industry, data = A, FUN = max)
print(max)


