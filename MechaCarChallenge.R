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

# Import & read Suspension_Coil.csv as a table
suspension_coil_df <- read.csv(file='./Resources/Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
# Write RScript that creates a total_summary df using summarize() function to get mean, median, variance, and standard deviation of suspension coil's PSI column
total_summary_df <- suspension_coil_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# Write RScript that creates a lot_summary df using groupby() and summarize() functions to group each manufacturing lot by mean, median, variance, and sd
lot_summary_df <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')


# Deliverable 3 - T-Tests on Suspension Coils

# Write RScript using t.test() function and its subset() argument to determine if PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
# T-test whole population
t.test(suspension_coil_df$PSI, mu=1500)

# T-test manufacturing lot #1
t.test(subset(suspension_coil_df, Manufacturing_Lot == 'Lot1')$PSI, mu=1500)
# T-test manufacturing lot #2
t.test(subset(suspension_coil_df, Manufacturing_Lot == 'Lot2')$PSI, mu=1500)
# T-test manufacturing lot #3
t.test(subset(suspension_coil_df, Manufacturing_Lot == 'Lot3')$PSI, mu=1500)









