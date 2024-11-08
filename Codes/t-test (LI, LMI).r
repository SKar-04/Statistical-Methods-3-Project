"""
                                  README FOR THE CODE
    This is the code for the first pooled t-test, taking Upper-Middle Income group as 
    the first sample and High-Income Group as the second sample.

"""

#Data vectors
Low_Income_Indices= c(0.811, 0.739, 0.734, 0.71, 0.709, 0.708, 0.706, 0.704, 0.701, 0.7, 0.697, 0.689)

Lower_Middle_Income_Indices= c(0.791, 0.788, 0.776, 0.757, 0.757, 0.755, 0.754, 0.746, 0.744,
                               0.74, 0.733, 0.73, 0.727, 0.726, 0.721, 0.72, 0.718, 0.716, 0.712, 
                               0.707, 0.706, 0.705, 0.7, 0.697, 0.696, 0.695, 0.693, 0.691, 0.686,
                               0.685, 0.681, 0.679, 0.679, 0.673, 0.673, 0.668, 0.664, 0.663, 0.661, 
                               0.655, 0.653, 0.651, 0.65, 0.629, 0.628, 0.628, 0.612, 0.609, 0.604, 
                               0.601, 0.576, 0.57, 0.568)

#Command for the pooled t-test
t_test_result <- t.test(Low_Income_Indices, Lower_Middle_Income_Indices, var.equal = TRUE,alternative = c("greater"))

#Prints the results
print(t_test_result)