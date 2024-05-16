# Creating a data frame for my family's age now and in 20 years

library(tidyverse)
names <- c("Ryan", "Riya", "Cinthuja", "Mathias", "Whiskers", "Bell Bellz", "Bumby")
age <- c(23, 17, 50, 55, 8, 8, 3)
people <- data.frame(names, age)

head(people)

str(people)

glimpse(people)

colnames(people)

mutate(people, age_in_20 = age + 20)

arrange(people, age)