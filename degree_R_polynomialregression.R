ggplot(data = dataset, aes(x = Years.experienced, y = Salary)) +
  geom_point() +
  stat_smooth(method = lm, formula = y ~ poly(x, 2, raw = TRUE), color = "blue") +  # Quadratic
  stat_smooth(method = lm, formula = y ~ poly(x, 5, raw = TRUE), color = "green") +  # 5th Degree Polynomial
  geom_line(aes(y = predict(linear_reg, newdata = dataset)), color = "red")  # Linear
  