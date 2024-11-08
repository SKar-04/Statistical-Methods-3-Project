"""
                          README FOR THIS CODE
   This code will plot the histogram of the GGIs of the countries belonging
   to the High-Income Group.

"""
#Importing the necessary library
library(ggplot2)

# GGI's of High Income countries
data <- c(0.793, 0.789, 0.789, 0.785, 0.781, 0.78, 0.761, 0.747, 0.744, 0.744, 0.743, 0.74,0.723, 0.725, 0.722, 0.72, 0.715, 0.715, 
          0.713, 0.71, 0.684, 0.684, 0.666, 0.663, 0.647, 0.645, 0.64, 0.636)

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
  geom_histogram(aes(y = after_stat(density)), bins = 11,
                 fill = "#0072B2", color = "black", alpha = 0.7) +  # Custom color with transparency
  stat_function(fun = dnorm, args = list(mean = mean_est, sd = sd_est),
                color = "#D55E00", linewidth = 1) +  # Different color for the normal curve
  scale_x_continuous(breaks = seq(0.6, 0.85, by = 0.05), limits = c(0.6, 0.85)) +  # Set x-axis scale
  labs(x = "Score", y = "Density") +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 18, face = "bold"),  # Center title and increase size
    axis.title.x = element_text(size = 14),  # Increase x-axis label size
    axis.title.y = element_text(size = 14),  # Increase y-axis label size
    axis.text = element_text(size = 12),  # Increase axis text size
    panel.grid.major = element_line(color = "gray80", size = 0.5),  # Add grid lines
    panel.grid.minor = element_blank()  # Remove minor grid lines
  ) +
  annotate(
    "label", x = min(density_x), y = max(density_y), hjust = 0, vjust = 1.1, 
    size = 5, fontface = "bold", fill = "lightyellow", color = "black", label.size = 0.2,
    label = paste("Mean:", round(mean_est, 3), "\nVariance:", round(sd_est^2, 2))
  )

