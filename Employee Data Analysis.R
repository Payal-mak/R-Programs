employee_data=read.csv("D:/Sem 2 Sumbjects/IR R Studio/Employee_Data_Analysis.csv")
library(ggplot2)
#task-1
# Find out the employees joined into the firm within 11 months from 01-Dec-81.
# Convert HIREDATE to Date format
employee_data$HIREDATE <- as.Date(employee_data$HIREDATE, format = "%d-%b-%y")

# Filter employees joined within 11 months
joined_within_11_months <- subset(employee_data, HIREDATE >= as.Date("1981-12-01") & HIREDATE <= as.Date("1982-10-01"))

# Display the employee details
joined_within_11_months$ENAME

#task-2
#2. How many employees belongs to the department with DEPTNO=20
# Count employees in DEPTNO=20
dept_20_count <- sum(employee_data$DEPTNO == 20)
dept_20_count

#task-3
#3. Find out the total number of employees in each Job Role
job_role_counts <- table(employee_data$JOB)
job_role_counts

# Calculate average salary
#task-4
average_salary <- mean(employee_data$SAL, na.rm = TRUE)  #na.rm doesn't consider null values
average_salary

#task-5
#5. Find out the job role that involves commission (COMM) for their work profiles
job_roles_with_comm <- unique(employee_data$JOB[employee_data$COMM == 0])
job_roles_with_comm

#task-6
# Box plot for salary
ggplot(employee_data, aes(x = "Salary", y = SAL)) +
  geom_boxplot(fill = "hotpink") +
  labs(title = "Box Plot: Salary",
       x = "Component",
       y = "Salary")

#Task-7
# Calculate the number of reporting employees for each manager
manager_counts <- table(employee_data$MGR)

# Find the manager with the maximum number of reporting employees
max_reporting_manager <- names(manager_counts[manager_counts == max(manager_counts)])
paste("The manager with the maximum number of reporting employees is MANAGER ID: ",max_reporting_manager)

#Task-8
#Find out the mean salary offered for each Job Role
# Calculate mean salary for each job role
mean_salary_by_job <- aggregate(SAL ~ JOB, data = employee_data, FUN = mean)

# Display the result
mean_salary_by_job

#Task-9
# Which year has the highest number of hired employees?
employee_data$Year <- format(employee_data$HIREDATE, "%Y")

# Calculate the number of hired employees for each year
yearly_employee_counts <- table(employee_data$Year)

# Find the year with the highest number of hired employees
max_hired_year <- names(yearly_employee_counts[yearly_employee_counts == max(yearly_employee_counts)])
max_hired_year

#Task-10
# Filter employees who are not managers
non_managers <- subset(employee_data, EMPNO %in% MGR)

# Display the employee names
non_managers$ENAME

#Task-11
# Calculate updated salary based on percentages
employee_data$Updated_Salary <- ifelse(employee_data$JOB == "PRESIDENT", employee_data$SAL * 1.20,
                                       ifelse(employee_data$JOB == "MANAGER",employee_data$SAL * 1.15,
                                              ifelse(employee_data$JOB == "ANALYST",employee_data$SAL * 1.10,
                                                     ifelse(employee_data$JOB == "CLERK",employee_data$SAL * 1.07,
                                                            ifelse(employee_data$JOB == "SALESMAN",employee_data$SAL * 1.05,
                                                                   employee_data$SAL)))))

# Display the updated dataset with the new salary
employee_data

#Task-12
# Box plot for revised salary
ggplot(employee_data, aes(x = "Revised Salary", y = Updated_Salary)) +
  geom_boxplot(fill = "maroon") +
  labs(title = "Box Plot: Revised Salary",
       x = "Component",
       y = "Revised Salary")
#Task-13

ggplot(employee_data, aes(x = ENAME, y = SAL)) +
  geom_point() +
  labs(title = "Scatterplot of Employee Salaries",
       x = "Employee",
       y = "Salary") 

#question 14
#Find out the employees who are the outliers in terms of their salaries


# Find outliers
outliers <- subset(employee_data, employee_data$SAL < 800 | employee_data$SAL > 3000)

# Print the outliers
print(outliers)


#task-15
deptno_counts <- table(employee_data$DEPTNO)
deptno_counts







