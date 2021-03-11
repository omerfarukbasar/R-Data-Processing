# Author: Omer Basar
# Lab Partner: Peter Agudelo
# Date: 2/19/20
# Lab 3

# Question 1:
smoker_data = c(21.5, 22.6 ,16.3, 25.9, 12.5, 17.7, 15.5, 19.6, 16.8, 18.8, 
            13.3, 17.2, 18, 21.9, 19.5, 20, 26.5, 23.5, 20.2, 16.4, 
            16.6, 21.4, 18, 24.8, 22.1, 19, 18.5, 19.4, 16.2, 15.7, 
            19.1, 16.6, 20.3, 21.2, 23.4, 23.7, 17.3, 21, 17.4, 22, 
            19.6, 24.3, 15.9, 10.3, 16.6, 19, 16.1, 27.3, 18.7, 20.6)
boxplot(smoker_data, horizontal = TRUE, main = paste("Smoker Percentages From All 50 States"), 
        xlab = "Percentages")
# Part A:
# The boxplot tells us that the distribution is symmetrical because as indicated
# by the plot, the median inside the box is not skewed towards any side which also
# tells us that the mean and median are pretty close to each other.
# Part B:
smoker_summary = summary(smoker_data)
# Calling smoker_summary in the console will give the five number summary
# as well as the mean.
# Five number summary below just in case.
# Minimum = 10.30
# Quartile One = 16.65
# Median = 19.05
# Quartile Three = 21.48
# Maximum = 27.30

# Question 2:
# Note:
# The worksheet mentions there being 136 Holleywood movies, however the data set
# provided to us gives us 141 Holleywood movies in 2011, so I'm just clarifying that with you.
movie_data = c(28, 8, 20, 19, 35, 30, 0.2, 5, 40, 150, 57, 20, 70, 17, 3.2, 32.5,
               140, 200, 10, 40, 90, 60, 163, 50, 21, 37, 25, 50, 15, 45, 20, 5,
               40, 125, 40, 24, 35, 30, 36, 200, 36, 30, 135, 125, 63, 35, 150, 60,
               75, 40, 1.5, 35, 79, 45, 80, 70, 150, 30, 27, 30, 3.5, 150, 17, 145,
               50, 20, 55, 10, 56, 25, 15, 5, 5, 40, 250, 60, 130, 135, 110, 42, 4,
               90, 93, 30, 40, 40, 6.5, 25, 125, 35, 18, 32, 27, 82, 50, 25, 5, 50.2,
               130, 16, 21, 41, 52, 15, 25, 20, 20, 70, 25, 90, 120, 80, 25, 12.5, 13,
               40, 40, 45, 37, 16, 45, 25, 110, 38, 75, 32, 150, 21, 75, 195, 110, 30,
               66, 25, 38, 50, 20, 30, 160, 49.9, 80)
boxplot(movie_data, horizontal = TRUE, main = paste("All Holleywood Movie Budgets from 2011"), 
        xlab = "Budget in Millions of Dollars")
# The distribution is skewed right, most of the data is concentrated
# on the left side. The mean would be greater than the median. There are
# also some outliers.
# Pirates of the Caribbean:On Stranger Tides was the largest outlier.
# The budget for Harry Potter and the Deathly Hallows Part 2 was
# 125 million dollars. No it is not an outlier.

# Question 3:
action_data = c(35, 70, 140, 40, 90, 163, 45, 125, 200, 30,
                75, 70, 30, 145, 250, 60, 110, 93, 30, 40, 125,
                27, 82, 25, 120, 40, 75, 150, 195, 25, 160)
comedy_data = c(28, 8, 40, 20, 3.2, 32.5, 10, 21, 36, 35, 79,
                45, 55, 25, 5, 40, 25, 41, 52, 70, 80, 45, 25, 75,
                50, 20, 49.9, 80)
drama_data = c(20, 19, 30, 37, 5, 40, 24, 35, 30, 50, 10, 6.5,
               18, 5, 16, 21, 15, 25, 20, 25, 13, 40, 45, 32, 66, 38)
horror_data = c(5, 25, 50, 20, 40, 30, 1.5, 5, 42, 4, 40, 25, 50,
                37, 16, 38)
boxplot(action_data, comedy_data, drama_data, horror_data, horizontal = TRUE,
        main = paste("Holleywood Movie Genre Budgets from 2011"),
        xlab = "Millions in Dollars", ylab = "Action    Comedy    Drama    Horror" )
#Action movies appear to have the largest budget while dramas seem to
#have the smallest budgets based on their medians.
#Action has the largest spread while horror has the smallest spread.
#Yes, there does seem to be an association bewteen genre and movie budget,
#because action and comedy tend to have more viewers which is why the budget
#is higher. Drama and horror are less popular genres so that is maybe as
#to why their budgets are lower.
