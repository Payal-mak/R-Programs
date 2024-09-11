library(ggplot2)
library(dplyr)

# TASK-I: Load the dataset
dataset <- read.csv("D:/Sem 2 Sumbjects/IR R Studio/salary_regression.csv")

# Preview the dataset
head(dataset)

# TASK-II: Aggregate and determine the total marks for each component
total_marks <- dataset %>%
  summarise(
    Total_ESE = sum(ESE, na.rm = TRUE),
    Total_CSE = sum(CSE, na.rm = TRUE),
    Total_IA = sum(IA, na.rm = TRUE),
    Total_TW = sum(TW, na.rm = TRUE),
    Total_Viva = sum(Viva, na.rm = TRUE)
  )

print("Total Marks for Each Component:")
print(total_marks)

# TASK-III: Map each of the components into 50, 20, 30, 25, and 25 marks, respectively
dataset <- dataset %>%
  mutate(
    ESE_mapped = ESE / max(ESE) * 50,
    CSE_mapped = CSE / max(CSE) * 20,
    IA_mapped = IA / max(IA) * 30,
    TW_mapped = TW / max(TW) * 25,
    Viva_mapped = Viva / max(Viva) * 25
  )

# TASK-IV: Draw the scatterplot of each component individually
components <- c("ESE_mapped", "CSE_mapped", "IA_mapped", "TW_mapped", "Viva_mapped")

for (component in components) {
  p <- ggplot(dataset, aes_string(x = "S.No", y = component)) +
    geom_point() +
    labs(title = paste("Scatterplot of", component), x = "Student Serial Number", y = component) +
    theme_minimal()
  print(p)
}

# TASK-V: Draw the box plot for each component individually
for (component in components) {
  p <- ggplot(dataset, aes_string(y = component)) +
    geom_boxplot() +
    labs(title = paste("Boxplot of", component), y = component) +
    theme_minimal()
  print(p)
}

# TASK-VI: Draw Bar chart for each component individually
for (component in components) {
  p <- ggplot(dataset, aes_string(x = "S.No", y = component)) +
    geom_bar(stat = "identity") +
    labs(title = paste("Bar Chart of", component), x = "Student Serial Number", y = component) +
    theme_minimal()
  print(p)
}

# TASK-VII: Create Pie chart for any two components
components_for_pie <- c("ESE_mapped", "Viva_mapped")

for (component in components_for_pie) {
  pie_data <- dataset %>%
    group_by(!!sym(component)) %>%
    summarise(count = n()) %>%
    mutate(percentage = count / sum(count) * 100)
  
  p <- ggplot(pie_data, aes(x = "", y = percentage, fill = factor(!!sym(component)))) +
    geom_bar(width = 1, stat = "identity") +
    coord_polar(theta = "y") +
    labs(title = paste("Pie Chart of", component), x = "", y = "") +
    theme_void()
  print(p)
}

# TASK-VIII: Absolute Grading to be given to each student
dataset <- dataset %>%
  mutate(Total_mapped_marks = ESE_mapped + CSE_mapped + IA_mapped + TW_mapped + Viva_mapped)

dataset <- dataset %>%
  mutate(
    Grade = case_when(
      Total_mapped_marks >= 90 ~ "O",
      Total_mapped_marks >= 80 ~ "A+",
      Total_mapped_marks >= 70 ~ "A",
      Total_mapped_marks >= 60 ~ "B+",
      Total_mapped_marks >= 50 ~ "B",
      Total_mapped_marks >= 40 ~ "C",
      TRUE ~ "F"
    )
  )

p <- ggplot(dataset, aes(x = Grade)) +
  geom_bar() +
  labs(title = "Number of Students for Each Grade", x = "Grade", y = "Number of Students") +
  theme_minimal()
print(p)
