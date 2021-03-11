# Author: Omer Basar
# Lab Partner: Peter Agudelo
# Lab Number: 4
# Date: 2/28/20

# Question 1 -------------------------------------------------------------------------------------

# Inititialize Variables
approval_rating <- c(62, 50, 70, 67, 57, 48, 31, 57, 39, 55, 49)
margin_of_victory <- c(10.0, 4.5, 15.4, 22.6, 23.2, -2.1, -9.7, 18.2, -5.5, 8.5, 2.4)

# Scatter Plot
plot(approval_rating, margin_of_victory, main = "Approval Rating vs Margin of Victory",
     xlab = "Approval Rating", ylab = "Margin of Victory")

# Question 2 -------------------------------------------------------------------------------------

# Initialize Variables
temperature_data <- c(54.5, 59.5, 63.5, 67.5, 72.0, 78.5, 83.0)
chirps_per_min <- c(81, 97, 103, 123, 150, 182, 195)

# Scatter Plot
plot(temperature_data, chirps_per_min, main = "Temperature vs Cricket Chirps per Minute",
     xlab = "Temperature (ºF)", ylab ="Cricket Chirps per Minute")

# Our estimate for the correlation would around 0.9 to 1.0 since the data points almost form
# a straight line, but not a perfectly straight one.

# Correlation Coefficient
correlation_value_one <- cor(temperature_data, chirps_per_min)
# The correlation coefficient is 0.99 which is extremely strong.

# It appears that chirp rate and temperature are associated since the correlation value is
# extremely close to one which indicates a strong relationship between the two variables.

# Question 3 -------------------------------------------------------------------------------------

# Inititialize Variables
# Note: The class as a whole is using these numbers as these were written on the board.
husband_age <- c(60, 58, 54, 82, 52, 61, 50, 48, 53, 51, 45, 51, 56, 50, 57)
wife_age <- c(52, 61, 53, 55, 53, 51, 45, 51, 45, 42, 42, 46, 53, 51, 56)

# Scatter Plot
plot(husband_age, wife_age, main = "Ages of Couples", xlab = "Husband's Age", ylab = "Wife's Age")

# If these two variables had a negative relationship in this scenario, it would mean that the 
# age gap between couples would increase as the husband's age increased. Another way of saying
# it would be the older the husband, the younger the wife.

# If these two variables had a positive relationship in this scenario, it would mean that the age
# gap between couples would stay the same as the wife's age would increase alongside the husband's
# age as well.

# It is more likely that a positive relationship would occur since most people tend to marry with
# someone that is close to their age level and maturity.

# We are expecting a moderately positive relationship in the data as most of the points are 
# clustered in an upward line but are spread out enough to make the realtionship weaker. The one 
# extreme outlier will also end up skewing the relationship considerably as correlation isn't
# resistant to any exterme outliers.

# Yes, a strong relationship would imply an association between a husband and wife's age

# Question 4 -------------------------------------------------------------------------------------

# Initialize Variables
SAT <- read.csv("StudentSurvey.csv")
math_scores <- SAT$MathSAT
verbal_scores <- SAT$VerbalSAT

# Scatter Plot
plot(math_scores, verbal_scores, main = "Math & Verbal SAT Score Comparison", 
     xlab = "Math SAT Scores", ylab = "Verbal SAT Scores")

# A positive relationship would imply that as one type of score increase, the other would also
# increase. A negative relationship would imply that as one type of score increases, the other
# would just decrease.

# A person in the bottom left corner is someone isn't good at english and math or may have not
# studied at all for their SAT. A peron in the top left corner is a student who excels in their
# english language skills, however they are pretty bad at math. A student in the bottom right
# corner is a mathmatical genius but lacks the skills of proper english writing. A student in
# the top right corner is a well rounded academic student who excels in both math and english and
# may end up receieving a scholarship based on their academic merits.

# There does not seem to be a strong linear relationship as most of the data points are spread
# out in clusters and do not form a close enough straight line.

# Correlation Coefficient
correlation_value_two <- cor(math_scores, verbal_scores)
# The correlation coefficient is roughly 0.44 which is between weak and moderate.

# Question 5 -------------------------------------------------------------------------------------

# Note: Since we are using the same data sets as question 2, we do not need to define the 
# groups again. The ones we will be using again are "temperature_data" & "chirps_per_min".

# Scatter Plot
plot(temperature_data, chirps_per_min, main = "Temperature vs Cricket Chirps per Minute",
     xlab = "Temperature (ºF)", ylab ="Cricket Chirps per Minute")

# Yes, there does appear to be a linear relationship between these two variables. It is extremely
# strong since you can draw a straight line that goes through almost all of the data points. It
# is a positive relationship since it is trending upward.

# Least Squares Line
linear_model <- lm(chirps_per_min ~ temperature_data)
linear_model

# Regression Line
abline(-157.817, 4.254)

# Residual Values for Each Data Point
residual_values <- resid(linear_model)
# Residual 1 =  6.9533981
# Residual 2 =  1.6815534
# Residual 3 = -9.3359223 
# Residual 4 = -6.3533981
# Residual 5 =  1.5019417
# Residual 6 =  5.8485437
# Residual 7 = -0.2961165

# Predicted Values
# Note: Formula is y = mx + b
# Formula in this case would be y = 4.254x -157.817
# Predicted Value 1 = 4.254(54.5) - 157.817 = 74.026
# Predicted Value 2 = 4.254(59.5) - 157.817 = 95.296
# Predicted Value 3 = 4.254(63.5) - 157.817 = 112.312
# Predicted Value 4 = 4.254(67.5) - 157.817 = 129.328
# Predicted Value 5 = 4.254(72.0) - 157.817 = 148.471
# Predicted Value 6 = 4.254(78.5) - 157.817 = 176.122
# Predicted Value 7 = 4.254(83.0) - 157.817 = 195.265
