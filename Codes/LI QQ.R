"""
                          README FOR THIS CODE
   This code will give the QQ-plot of the GGIs of the countries belonging
   to the Low Income Group.

"""
# Loading ggplot2
library(ggplot2)

# GGI's of Low Income countries
data <- c(0.739, 0.734, 0.71, 0.709, 0.708, 0.706, 0.704, 0.701, 0.7, 0.697, 0.689)# Create a data frame
data_df <- data.frame(value = data)

# Creating QQ plot with ggplot2
ggplot(data_df, aes(sample = value)) +
  stat_qq(size = 2, color = "#0072B2") +  # Set point color and size for better visibility
  stat_qq_line(color = "#D55E00", size = 1.2) +  # Color and size for the QQ line
  labs(x = "Theoretical Quantiles",
       y = "Sample Quantiles") +
  theme_minimal() + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 18, face = "bold"),  # Center title and increase size
    axis.title.x = element_text(size = 14),  # Increase x-axis label size
    axis.title.y = element_text(size = 14),  # Increase y-axis label size
    axis.text = element_text(size = 12),  # Increase axis text size
    panel.grid.major = element_line(color = "gray80", size = 0.5),  # Add major grid lines
    panel.grid.minor = element_blank()  # Remove minor grid lines
  )