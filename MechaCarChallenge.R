# Deliverable 1 - Linear Regression to Predict MPG

# Load the dplyr package
library(dplyr)
# Import & read the MechaCar_mpg.csv file as a dataframe
mechacar_mpg_df <- read.csv(file='./Resources/MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)
# Perform linear regression using lm() function. Pass in all six variables
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechacar_mpg_df)
# Using summary() function, determine p-value & r-squared value for linear regression model
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechacar_mpg_df))

# Deliverable 2 - Create Visualizations for the Trip Analysis


# Deliverable 3 - T-Tests on Suspension Coils












