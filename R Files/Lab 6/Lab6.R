#Author: Omer Basar
#Lab 6
#------------------
#Note: The answers to the questions are in the Latex file.
#Note: My version of Rstudio doesn't read .xlsx files unless I use a package.
#Make sure to put the data set and lab file in the same folder and set 
#the working directory to the same location.
install.packages("readxl")
library("readxl")

#Read the data set
ACT <- read_excel("dataset_SAT.xlsx")
Scores = (ACT$'ACT Score')[2:37]
Frequency = (ACT$Frequency)[2:37]
df <- data.frame(Scores, Frequency)

#Create a histogram
library(ggplot2)
k <- ggplot(df, aes(x = Scores, y = Frequency)) + geom_histogram(stat = "identity")
#Call k in the terminal window to see the histogram.

#Mean and Standard Deviation
m <- mean(Scores)
s <- sd(Scores)

#Create normal distribution
normal_distribution <- rnorm(2090332, mean = m, sd = s)
hist(normal_distribution, main = "Normal Distribution", xlab = "ACT Scores", ylab = "Frequency")

#Consideration for Honors with score 30 + proportion using raw data.
sub1Scores <- sum(c(Frequency[1:7]))
tot1Scores <- sum(Frequency)
answ1 <- sub1Scores/tot1Scores

#Probability for people with score of at most 12 using raw data.
sub2Scores <- sum(c(Frequency[25:36]))
answ2 <- sub2Scores/tot1Scores

#83rd percentile
b <- quantile(normal_distribution, c(0.83))