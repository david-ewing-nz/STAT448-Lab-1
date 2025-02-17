# Load the dataset.
states <- as.data.frame(state.x77)
# check if not zero
!length(states)==0


str(states)

hist(states$Income, col = "orange", main = "Histogram of Income", xlab = "Income")

# Boxplot for Income
boxplot(states$Income, col = "orange",
        main = "Boxplot of Income",
        ylab = "Income (per capita)")


# Scatter plot of Income vs. Illiteracy
plot(states$Illiteracy, states$Income, pch = 16, col = "red",
     main = "Income vs. Illiteracy",
     xlab = "Illiteracy Rate (%)",
     ylab = "Income ($)")



cor(states$Income, states$Illiteracy)


model <- lm(Income ~ Illiteracy, data = states)



hist(model$residuals)
