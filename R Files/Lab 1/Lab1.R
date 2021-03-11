# Omer Basar
# Linear Regression Activity
# Math 225 Spring 2020

head(cars)
x<-c(1,0,3,1.5,2.75,1,0.5,2)
y<-c(78,75,90,89,97,85,81,80)
#Scatterplot
plot(x, y, main="Test Scores vs Hours Studied", xlab = "Hours Studied",
     ylab = "Test Scores")
#Regression line
abline( 76.406, 5.425 )

#Correlation Coefficient
cor(x,y)   

#Least Squares line
fit <- lm(y ~ x)
fit 
