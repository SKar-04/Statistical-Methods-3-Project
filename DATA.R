"""          
                                   README FOR THE CODE    
    
       This file has the entire list of 146 countries as mentioned in the Gender Gap Report and
       their individual Gender Gap Indices (GGI). In addition, the countries have been classified
       corresponding to the International Monetary Fund's classification. Their data has been
       separated out. All the print statements have been commented. Kindly delete the '#' before
       the statements to print the required data accordingly.
       
"""

# Define the countries and scores vectors
countries <- c("Iceland", "Finland", "Norway", "New Zealand", "Sweden", "Nicaragua", "Germany", "Namibia", 
               "Ireland", "Spain", "Lithuania", "Belgium", "Moldova", "United Kingdom", "Denmark", 
               "Ecuador", "Portugal", "South Africa", "Costa Rica", "Switzerland", "Chile", "France", 
               "Albania", "Australia", "Philippines", "Serbia", "Mozambique", "Netherlands", "Estonia", 
               "Latvia", "Barbados", "Argentina", "Mexico", "Slovenia", "Guyana", "Canada", "Jamaica", 
               "Burundi", "Rwanda", "Peru", "Cape Verde", "Liberia", "United States of America", "Bolivia", 
               "Colombia", "Luxembourg", "Eswatini", "Singapore", "Austria", "Panama", "Poland", "Zimbabwe", 
               "Suriname", "United Republic of Tanzania", "Belarus", "Slovakia", "Botswana", 
               "Republic of North Macedonia", "Honduras", "Bulgaria", "Croatia", "Malta", "Ukraine", 
               "Armenia", "Thailand", "Madagascar", "Montenegro", "Romania", "Georgia", "Brazil", 
               "Uruguay", "Viet Nam", "Greece", "United Arab Emirates", "Kenya", "Kazakhstan", "Togo", 
               "Bosnia and Herzegovina", "Ethiopia", "Sierra Leone", "Paraguay", "Dominican Republic", 
               "Uganda", "Cyprus", "Mongolia", "Timor-Leste", "Italy", "Ghana", "Lao PDR", "Kyrgyz Republic", 
               "Israel", "Zambia", "Guatemala", "Republic of Korea", "Belize", "El Salvador", "Cameroon", 
               "Lesotho", "Bangladesh", "Indonesia", "Hungary", "Cambodia", "Azerbaijan", "Czechia", 
               "Brunei Darussalam", "China", "Mauritius", "Uzbekistan", "Senegal", "Gambia", "Vanuatu", 
               "Tajikistan", "Angola", "Malaysia", "Tunisia", "Bahrain", "Nepal", "Japan", "Comoros", 
               "Burkina Faso", "Côte d'Ivoire", "Sri Lanka", "Jordan", "Bhutan", "Nigeria", "Saudi Arabia", 
               "Türkiye", "Fiji", "India", "Qatar", "Kuwait", "Maldives", "Lebanon", "Benin", "Egypt", 
               "Oman", "Morocco", "Niger", "Algeria", "Democratic Republic of the Congo", "Mali", 
               "Guinea", "Iran", "Chad", "Pakistan", "Sudan")

scores <- c(0.935, 0.875, 0.875, 0.835, 0.816, 0.811, 0.810, 0.805, 0.802, 0.797, 0.793, 0.793, 
            0.791, 0.789, 0.789, 0.788, 0.787, 0.785, 0.785, 0.785, 0.781, 0.781, 0.780, 0.780, 
            0.779, 0.779, 0.776, 0.775, 0.774, 0.773, 0.773, 0.772, 0.768, 0.766, 0.765, 0.761, 
            0.768, 0.757, 0.757, 0.755, 0.755, 0.754, 0.747, 0.746, 0.745, 0.744, 0.744, 0.744, 
            0.743, 0.742, 0.740, 0.740, 0.739, 0.734, 0.733, 0.731, 0.730, 0.727, 0.726, 0.723, 
            0.723, 0.723, 0.722, 0.721, 0.720, 0.720, 0.718, 0.717, 0.716, 0.716, 0.715, 0.715, 
            0.714, 0.713, 0.712, 0.710, 0.710, 0.710, 0.709, 0.708, 0.707, 0.706, 0.706, 0.705, 
            0.705, 0.704, 0.703, 0.701, 0.700, 0.700, 0.699, 0.697, 0.697, 0.696, 0.696, 0.695, 
            0.693, 0.691, 0.689, 0.686, 0.686, 0.685, 0.685, 0.684, 0.684, 0.684, 0.683, 0.681, 
            0.679, 0.679, 0.673, 0.673, 0.668, 0.668, 0.668, 0.666, 0.664, 0.663, 0.663, 0.661, 
            0.655, 0.653, 0.652, 0.651, 0.650, 0.647, 0.645, 0.642, 0.641, 0.640, 0.636, 0.633, 
            0.632, 0.629, 0.629, 0.628, 0.628, 0.628, 0.612, 0.609, 0.604, 0.601, 0.579, 0.576, 
            0.570, 0.568)

# Creating the data frame
countries_scores_df <- data.frame(Country = countries, Score = scores)

# Display the data frame
#print(countries_scores_df)

High_Income =    c("Iceland", "Finland", "Norway", "New Zealand", "Sweden", 
                  "Germany", "Ireland", "Belgium", "Denmark", "Switzerland", 
                  "United Kingdom", "France","Australia", "Netherlands", 
                  "Canada", "United States of America","Luxembourg", "Singapore",
                  "Austria", "Poland","Czechia","Brunei Darussalam", "Japan", 
                  "Saudi Arabia", "Bahrain","Qatar", "Kuwait", "Türkiye")

High_Income_Indices= c(0.935, 0.875, 0.875, 0.835, 0.816, 0.81, 0.802, 0.793, 0.789, 0.789, 0.785, 0.781, 
                      0.78, 0.775, 0.761, 0.747, 0.744, 0.744, 0.743, 0.74, 0.684, 0.684, 0.666, 0.663, 
                      0.647, 0.645, 0.64, 0.636)

# Creating the data frame
HI_data <- data.frame("High Income Countries" = High_Income , "Gender Gap Index" = High_Income_Indices)

# Display the data frame
#print(HI_data)

Upper_Middle_Income =   c("Spain", "Portugal", "Chile", "Costa Rica", 
                          "Lithuania", "Namibia", "South Africa",
                          "Argentina", "Mexico", "Philippines", "Slovenia", 
                          "Barbados", "Estonia", "Latvia", "Serbia", 
                          "Peru", "Guyana","Colombia", "Panama", "Bulgaria", 
                          "Croatia", "Malta", "Ukraine", "Slovakia","Brazil", 
                          "Thailand", "Romania", "Uruguay", "Viet Nam", "Greece", 
                          "Kazakhstan", "Bosnia and Herzegovina", "United Arab Emirates",
                          "Azerbaijan", "Cyprus", "Hungary", "Israel", "Italy", "Republic of Korea",
                          "China", "Malaysia", "Mauritius", "Tunisia", "Jordan",
                          "India", "Oman", "Maldives", "Lebanon", "Egypt", "Iran","Jamaica","Fiji")

Upper_Middle_Income_Indices=c(0.805, 0.797, 0.793, 0.787, 0.785, 0.785, 0.781, 0.779, 0.779, 0.774,
                              0.773, 0.773, 0.772, 0.768, 0.766, 0.765, 0.768, 0.755, 0.745, 0.742,
                              0.731, 0.723, 0.723, 0.723, 0.722, 0.72, 0.717, 0.716, 0.715, 0.715, 
                              0.714, 0.713, 0.71, 0.71, 0.705, 0.703, 0.699, 0.696, 0.686, 0.685, 
                              0.684, 0.683, 0.668, 0.668, 0.652, 0.642, 0.641, 0.633, 0.632, 0.629, 0.628, 0.579)

# Creating the data frame
UMI_data <- data.frame("Upper-Middle Income Countries" = Upper_Middle_Income , "Gender Gap Index" = Upper_Middle_Income_Indices)

# Display the data frame
#print(UMI_data)
 

Lower_Middle_Income =    c("Ecuador", "Moldova","Albania", "Burundi", "Rwanda", 
                          "Liberia", "Cape Verde", "Bolivia", "Mozambique",
                          "Eswatini", "Honduras", "Republic of North Macedonia", 
                          "Belarus", "Botswana", "Zimbabwe","Armenia", "Georgia",
                          "Kenya", "Madagascar", "Paraguay", "Montenegro", "Dominican Republic",
                          "Mongolia", "El Salvador", "Cameroon", "Kyrgyz Republic", 
                          "Guatemala", "Cambodia", "Belize", "Indonesia","Uzbekistan", 
                          "Angola", "Nepal", "Sri Lanka", "Tajikistan", 
                          "Côte d'Ivoire", "Burkina Faso", "Nigeria", 
                          "Senegal", "Gambia", "Comoros", "Vanuatu", "Bhutan",
                          "Pakistan", "Sudan", "Morocco", "Chad", "Benin", "Guinea", "Mali", 
                          "Niger", "Algeria", "Democratic Republic of the Congo","Lesotho")

Lower_Middle_Income_Indices= c(0.791, 0.788, 0.78, 0.776, 0.757, 0.757, 0.755, 0.754, 0.746, 0.744,
                              0.74, 0.733, 0.73, 0.727, 0.726, 0.721, 0.72, 0.718, 0.716, 0.712, 
                              0.707, 0.706, 0.705, 0.7, 0.697, 0.696, 0.695, 0.693, 0.691, 0.686,
                              0.685, 0.681, 0.679, 0.679, 0.673, 0.673, 0.668, 0.664, 0.663, 0.661, 
                              0.655, 0.653, 0.651, 0.65, 0.629, 0.628, 0.628, 0.612, 0.609, 0.604, 
                              0.601, 0.576, 0.57, 0.568)

# Creating the data frame
LMI_data <- data.frame("Lower-Middle Income Countries" = Lower_Middle_Income , "Gender Gap Index" = Lower_Middle_Income_Indices)

# Display the data frame
#print(LMI_data)

Low_Income = c("Nicaragua","Suriname", "United Republic of Tanzania","Ethiopia",
              "Sierra Leone", "Togo","Uganda", "Zambia", "Ghana", "Lao PDR", "Timor-Leste", 
              "Bangladesh")

Low_Income_Indices= c(0.811, 0.739, 0.734, 0.71, 0.709, 0.708, 0.706, 0.704, 0.701, 0.7, 0.697, 0.689)

# Creating the data frame
LI_data <- data.frame("Low Income Countries" = Low_Income , "Gender Gap Index" = Low_Income_Indices)

# Display the data frame
#print(LI_data)

