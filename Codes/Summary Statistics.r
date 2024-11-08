"""
                             README FOR THE CODE
   In this code, a selection of countries have been taken from each individual income
   groups and a summary of the scores of groups have been provided. These include the
   MEAN, MEDIAN, VARIANCE and STANDARD DEVIATION of the GGI's.

"""

# Load necessary libraries
library(psych)

#Data
High_Income_Indices= c(0.793, 0.789, 0.789, 0.785, 0.781, 0.78, 0.761, 0.747, 0.744, 0.744, 0.743, 0.74, 0.684, 0.684, 0.666, 0.663, 
                      0.647, 0.645, 0.64, 0.636)

Upper_Middle_Income_Indices= c(0.805, 0.797, 0.793, 0.787, 0.785, 0.781, 0.779, 0.774,
                              0.773, 0.772, 0.768, 0.766, 0.765,  0.755, 0.745, 0.742,
                              0.731,  0.723,  0.722, 0.72, 0.717, 0.716, 0.715, 0.715, 
                              0.714, 0.713, 0.71, 0.703, 0.699, 0.696)

Lower_Middle_Income_Indices= c(0.791, 0.788, 0.776, 0.757, 0.757, 0.755, 0.754, 0.746, 0.744,
                              0.74, 0.733, 0.73, 0.727, 0.726, 0.721, 0.72, 0.718, 0.716, 0.712, 
                              0.707, 0.706, 0.705, 0.7, 0.697, 0.696, 0.695, 0.693, 0.691, 0.686,
                              0.685, 0.681, 0.679, 0.679, 0.673, 0.673, 0.668, 0.664, 0.663, 0.661, 
                              0.655, 0.653, 0.651, 0.65, 0.629, 0.628, 0.628, 0.612, 0.609, 0.604, 
                              0.601, 0.576, 0.57, 0.568)

Low_Income_Indices= c(0.811, 0.739, 0.734, 0.71, 0.709, 0.708, 0.706, 0.704, 0.701, 0.7, 0.697, 0.689)

# Creating a function to calculate comprehensive summary statistics
summarize_stats <- function(data) {
  data.frame(
    Mean = mean(data),
    Median = median(data),
    Variance = var(data),
    SD = sd(data)
  )
}

# Appling the function to each group
HI_stats <- summarize_stats(High_Income_Indices)
UMI_stats <- summarize_stats(Upper_Middle_Income_Indices)
LMI_stats <- summarize_stats(Lower_Middle_Income_Indices)
LI_stats <- summarize_stats(Low_Income_Indices)

# Combining results into a single data frame
summary_stats <- rbind(
  data.frame(Group = "High Income Countries", HI_stats),
  data.frame(Group = "Upper-Middle Income Countries", UMI_stats),
  data.frame(Group = "Lower-Middle Income Countries", LMI_stats),
  data.frame(Group = "Low Income Countries", LI_stats)
)

# Printing the summary statistics
print(summary_stats)


