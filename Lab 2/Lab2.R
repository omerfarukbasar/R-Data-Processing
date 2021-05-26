# Author: Omer Basar
# Lab Partner: Peter Agudelo
# Date: 2/9/20
# Lab 2

# Question 1:
x = sample(0:10, 100,replace=TRUE)
plot(x, main = paste("Plot of 100 Random Numbers"), ylab = "Number Value")

# Question 2:
# In order to view them, call "P" and "Q" in the console.
P = c(31:60)
Q = matrix(P,nrow=6,ncol=5)

# Question 3:
lifetime_at_uni = ((2020-2019)/(2020-2000))*100

# Question 4:
# rgb = Produces a color based on the input value.
# lwd = Sets line widths in plots.
# pch = Adds points to a plot.
# cex = Sets the scale of text and symbols in plots.

# Question 5:
y = c(5.9, 3.5, 116, 39.4, 2.5, 19.6, 5.2, 71.4, 26.4, 4.8, 6.6,
  16.5, 25.4, 7.1, 128, 83.7, 108.5, 61.3, 6.4, 31, 7.5, 17.3, 12.6,
  7, 10.5, 30, 55.4, 3.9, 5.5, 6.3, 67, 28.8, 5.8, 4.5, 119.1, 25.4,
  106.5, 53, 8.5, 87.6, 114, 97.5, 11.8, 66.5, 16, 5, 25.6, 81.5, 1.2,
  34, 15.5, 17.3, 71.8)
hist(y, main = paste("Histogram of Florida lakes alkalinity"), xlab = "Alkalinity Values")
# The shape of the histogram is skewed right.
# The mean is expected to be larger than the median in this sample of alkalinity
# values because the the shape of the distribution is skewed right.
alkalinity_mean = mean(y)
alkalinity_median = median(y)
# The mean is located in the second bar of the graph,
# while the median is in the first bar.

# Question 6:
z = c(97.2, 97.6, 98.4, 98.5, 98.3, 97.7, 97.3, 97.7, 98.5, 98.5, 98.4, 97.9)
dotchart(z, main = paste("Dotplot of Temperature Taken Over 2 Days"),
  xlab = "Temperature Values", ylab = "Data Points")
temp_mean = mean(z)
temp_median = median(z)
# The mean is located at 98 degrees and the median is located
# between 98 and 98.2 degrees.

# Question 7:
# Des Moines is expected to have the higher standard deviation because
# the outliers are more extreme in this set compared to San Francisco.
Des_Moines = c(56, 37.5, 37.2, 56, 54.3, 63.3, 54.7, 60.6, 70.6,
               53.7, 52.9, 74.9, 44.4, 40.3, 44.4, 71)
San_Francisco = c(51, 55.3, 55.7, 48.7, 56.2, 57.2, 49.5, 61,
                  51.4, 55.8, 53, 58.1, 54.2, 53.4, 49.9, 53.8)
dotchart(Des_Moines, main = paste("Dotplot of Temperature on April 14 at Des Moines"),
         xlab = "Temperature Values", ylab = "Data Points")
dotchart(San_Francisco, main = paste("Dotplot of Temperature on April 14 at San Francisco"),
         xlab = "Temperature Values", ylab = "Data Points")
deviation_one = sd(Des_Moines)
deviation_two= sd(San_Francisco)
# The standard deviation for Des Moines is higher than
# the one for San Francisco.
des_mean = mean(Des_Moines)
des_median = median(Des_Moines)
san_mean = mean(San_Francisco)
san_median = median(San_Francisco)
# Des Moines has a higher median and mean compared to San Francisco.
