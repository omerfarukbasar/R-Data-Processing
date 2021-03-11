#Author: Omer Basar
#Lab Partner: Peter Agudelo

#------------------------------------------------------
#Install packages
install.packages("tidyverse")
library(tidyverse)

#------------------------------------------------------
housing <- read_csv("landdata-states.csv")
head(housing[1:5])
hist(housing$Home.Value)

#------------------------------------------------------
#ggplot2 histogram example:
library(ggplot2)
ggplot(housing, aes(x = Home.Value)) +
  geom_histogram() 

#------------------------------------------------------
plot(Home.Value ~ Date,
     col = factor(State),
     data = filter(housing, State %in% c("MA", "TX")))
legend("topleft",
       legend = c("MA", "TX"),
       col = c("black", "red"),
       pch = 1)

#------------------------------------------------------
#ggplot2 colored scatter plot example:
ggplot(filter(housing, State %in% c("MA", "TX")),
         aes(x=Date,
             y=Home.Value,
             color=State))+
  geom_point()

#------------------------------------------------------
hp2001Q1 <- filter(housing, Date == 2001.25) 
ggplot(hp2001Q1,
       aes(y = Structure.Cost, x = Land.Value)) +
  geom_point()

#------------------------------------------------------
ggplot(hp2001Q1,
       aes(y = Structure.Cost, x = log(Land.Value))) +
  geom_point()

#------------------------------------------------------
hp2001Q1$pred.SC <- predict(lm(Structure.Cost ~ log(Land.Value), data = hp2001Q1))

p1 <- ggplot(hp2001Q1, aes(x = log(Land.Value), y = Structure.Cost))

p1 + geom_point(aes(color = Home.Value)) +
  geom_line(aes(y = pred.SC))

#------------------------------------------------------
p1 +
  geom_point(aes(color = Home.Value)) +
  geom_smooth()

## `geom_smooth()` using method = 'loess' and formula 'y ~ x'

#------------------------------------------------------
p1 + geom_text(aes(label=State), size = 3)

#------------------------------------------------------
## install.packages("ggrepel") 
library("ggrepel")
p1 + 
  geom_point() + 
  geom_text_repel(aes(label=State), size = 3)

#------------------------------------------------------
p1 +
  geom_point(aes(size = 2),# incorrect! 2 is not a variable
             color="red") # this is fine -- all points red

#------------------------------------------------------
p1 +
  geom_point(aes(color=Home.Value, shape = region))

## Warning: Removed 1 rows containing missing values (geom_point).

#-------------------------------------------------------
dat <- read_csv("EconomistData.csv")

#-------------------------------------------------------
