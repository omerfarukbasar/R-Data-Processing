#Author: Omer Basar
#Course: Stats & Data Analytics
#Lab 7
#Note: Anthony Vallejo helped me with the code.
#------------------------------

#Question 1A
size1A <- 800
probability1A <- 0.28
#(.72 * .28)/800 = 0.000252
standardDeviation1A <- 0.000252
marginError1A <- qnorm(0.975) * sqrt(standardDeviation1A)
upperBound1A <- probability1A + marginError1A
lowerBound1A <- probability1A - marginError1A


#Question 1B
size1B<- 800
probability1B <- 0.82
#(.82 *.18)/800 = 0.0001845
standardDeviation1B <- 0.0001845 
marginError1B <-qnorm(0.975) * sqrt (standardDeviation1B)
upperBound1B <- probability1B + marginError1B
lowerBound1B <- probability1B - marginError1B


#Question 2
probability2 <- 0.28
notProbability2 <- 0.72
confidence2 <- 0.99
marginError2 <- 0.01
number2 <- (probability2*notProbability2)*((confidence2/marginError2)^2)


#Question 3
size3 <- 2450
probability3 <- 0.549
#(.549 * .451)/2450 = 0.0001
standardDeviation3 <- 0.0001 
marginError3 <- qnorm(0.95) * sqrt (standardDeviation3)
upperBound3 <- probability3 + marginError3
lowerBound3 <- probability3 - marginError3



#Question 4A
size4A <- 2255
probability4A <- 0.792
#(.792 * .208)/2255 = 0.000073
standardDeviation4A <- 0.000073 
marginError4A <- qnorm(0.975) * sqrt (standardDeviation4A)
upperBound4A <- probability4A + marginError4A
lowerBound4A <- probability4A - marginError4A

#Question 4B
size4B <- 1787
probability4B <- 0.590
#(.59 * .41)/2255 = 0.0001
standardDeviation4B <- 0.0001 #((.59)(.41))/2255
marginError4B <- qnorm(0.975) * sqrt (standardDeviation4B)
upperBound4B <- probability4B + marginError4B
lowerBound4B <- probability4B - marginError4B



#Question 4C
probability4C <- 0.59
notProbability4C <- 0.41
confidence4 <- 0.90
marginError4 <- 0.0001
number4 <- (probability4C*notProbability4C)*((confidence4/marginError4)^2)


#Question 5
size5 <- 1068
probability5 <- 0.900
#(.9 * .1)/1068 =  0.00008
standardDeviation5 <- 0.00008 
marginError5 <- qnorm(0.975) * sqrt (standardDeviation5)
upperBound5 <- probability5 + marginError5
lowerBound5 <- probability5 - marginError5
