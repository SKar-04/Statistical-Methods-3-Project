"""
                                  README FOR THE CODE
    This is the code for the first pooled t-test, taking Upper-Middle Income group as 
    the first sample and High-Income Group as the second sample.

"""

#Data vectors
High_Income_Indices= c(0.793, 0.789, 0.789, 0.785, 0.781, 0.78, 0.761, 0.747, 0.744, 0.744, 0.743, 0.74,0.723,  0.722, 0.72, 0.717, 0.716, 0.715, 0.715, 
                       0.714, 0.713, 0.71 0.684, 0.684, 0.666, 0.663, 
                       0.647, 0.645, 0.64, 0.636)

Upper_Middle_Income_Indices= c(0.805, 0.797, 0.793, 0.787, 0.785, 0.781, 0.779, 0.774,
                              0.773, 0.772, 0.768, 0.766, 0.765,  0.755, 0.745, 0.742,
                              0.731,  0.723,  0.722, 0.72, 0.717, 0.716, 0.715, 0.715, 
                              0.714, 0.713, 0.71, 0.703, 0.699, 0.696)

#Command for the pooled t-test
t_test_result <- t.test(Upper_Middle_Income_Indices, High_Income_Indices, var.equal = TRUE,alternative = c("greater"))

#Prints the results
print(t_test_result)