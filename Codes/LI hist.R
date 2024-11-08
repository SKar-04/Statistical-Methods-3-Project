"""
                          README FOR THIS CODE
   This code will plot the histogram of the GGIs of the countries belonging
   to the Low Income Group.

"""
#Loading the necessary library
library(ggplot2)
# GGI's of Low-Income countries
data <- c(0.739, 0.734, 0.71, 0.709, 0.708, 0.706, 0.704, 0.701, 0.7, 0.697, 0.689)

# Creating a data frame
data_df <- data.frame(value = data)

# Calculating mean and standard deviation
mean_est <- mean(data)
sd_est <- sd(data)

# Calculating density values for annotation
density_values <- density(data)
density_x <- density_values$x
density_y <- density_values$y

# Creating the ggplot
ggplot(data = data_df, aes(x = value)) +
  geom_histogram(aes(y = after_stat(density)), bins = 13,
                 fill = "#0072B2", color = "black", alpha = 0.7) +  # Custom color with transparency
  stat_function(fun = dnorm, args = list(mean = mean_est, sd = sd_est),
                color = "#D55E00", linewidth = 1) +  # Different color for the normal curve
  scale_x_continuous(breaks = seq(0.7, 0.85, by = 0.05), limits = c(0.6, 0.85)) +  # Set x-axis scale
  labs(x = "Score", y = "Density") +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 18, face = "bold"),  # Center title and increase size
    axis.title.x = element_text(size = 14),  # Increase x-axis label size
    axis.title.y = element_text(size = 14),  # Increase y-axis label size
    axis.text = element_text(size = 12),  # Increase axis text size
    panel.grid.major = element_line(color = "gray80", size = 0.5),  # Add grid lines
    panel.grid.minor = element_blank()  # Remove minor grid lines
  )

