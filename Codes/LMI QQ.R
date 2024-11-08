"""
                          README FOR THIS CODE
   This code will give the QQ-plot of the GGIs of the countries belonging
   to the Lower-Middle Income Group.

"""

# Load ggplot2
library(ggplot2)

#GGI's of Lower-Middle Income countries
data <- c(0.791, 0.788, 0.776, 0.757, 0.757, 0.755, 0.754, 0.746, 0.744,
          0.74, 0.733, 0.73, 0.727, 0.726, 0.721, 0.72, 0.718, 0.716, 0.712, 
          0.707, 0.706, 0.705, 0.7, 0.697, 0.696, 0.695, 0.693, 0.691, 0.686,
          0.685, 0.679, 0.673, 0.673, 0.668, 0.664, 0.663, 0.661, 
          0.655, 0.653, 0.651, 0.65, 0.629, 0.628, 0.628, 0.612, 0.609, 0.604, 
          0.601, 0.576, 0.57, 0.568)

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