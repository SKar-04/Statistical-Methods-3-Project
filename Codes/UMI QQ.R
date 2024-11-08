"""
                          README FOR THIS CODE
   This code will give the QQ-plot of the GGIs of the countries belonging
   to the High-Income Group.

"""

# Loading ggplot2
library(ggplot2)

# GGI's of Upper-Middle Income countries
data <- c(0.875,0.805, 0.779, 0.774,
          0.773, 0.773, 0.772, 0.768, 0.755, 0.745, 0.742,
          0.731, 0.723, 0.723, 0.723, 0.722, 0.72, 0.717, 0.716, 0.715, 0.715, 
          0.714, 0.713, 0.71, 0.71, 0.705, 0.703, 0.699, 0.696,0.695, 0.686, 0.685, 
          0.684, 0.683, 0.668, 0.668, 0.652, 0.642, 0.632, 0.629, 0.628, 0.579)

# Creating a data frame
data_df <- data.frame(value = data)

# Creating QQ plot with ggplot2
ggplot(data_df, aes(sample = value)) +
  stat_qq(size = 2, color = "#0072B2") +  # Set point color and size for better visibility
  stat_qq_line(color = "#D55E00", size = 1.2) +  # Color and size for the QQ line
  labs(x = "Theoretical Quantiles",
       y = "Sample Quantiles") +
  theme_minimal() +  # Use a minimal theme for a clean look
  theme(
    plot.title = element_text(hjust = 0.5, size = 18, face = "bold"),  # Center title and increase size
    axis.title.x = element_text(size = 14),  # Increase x-axis label size
    axis.title.y = element_text(size = 14),  # Increase y-axis label size
    axis.text = element_text(size = 12),  # Increase axis text size
    panel.grid.major = element_line(color = "gray80", size = 0.5),  # Add major grid lines
    panel.grid.minor = element_blank()  # Remove minor grid lines
  )