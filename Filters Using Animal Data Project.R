library(tidyverse)

#1: animals sleeping over 18 hours 
 my_data <- msleep %>% 
    select(name, sleep_total) %>% 
    filter(sleep_total > 18)

 #2: animals sleeping under 18 hours 
 my_data <- msleep %>% 
   select(name, sleep_total) %>% 
   filter(!sleep_total > 18)
 
 #3: animals within the order Primates with bodyweight over 20
 my_data <- msleep %>% 
   select(name, order, bodywt, sleep_total) %>% 
   filter(order == "Primates", bodywt > 20)
 
 #4: animals within the order Primates or with bodyweight over 20 
 my_data <- msleep %>% 
   select(name, order, bodywt, sleep_total) %>% 
   filter(order == "Primates" | bodywt > 20)
 
 #5: sleep totals of Cows, Dogs, and Goats
 my_data <- msleep %>% 
   select(name, sleep_total) %>% 
   filter(name == "Cow" |
            name == "Dog" |
            name == "Goat")
 
 #6: sleep totals of Cows, Dogs, and Horses
 my_data <- msleep %>% 
   select(name, sleep_total) %>% 
   filter(name %in% c("Cow", "Dog", "Horse"))
  
 #7: animals that sleep between 16 and 18 hours
 my_data <- msleep %>% 
   select(name, sleep_total) %>% 
   filter(between(sleep_total, 16, 18))
 
 #8: animals that sleep about 17 hours
 my_data <- msleep %>% 
   select(name, sleep_total) %>% 
   filter(near(sleep_total, 17, tol = 0.5))
 
 #9: where conservation is a missing value
 my_data <- msleep %>% 
   select(name, conservation, sleep_total) %>% 
   filter(is.na(conservation))
 
 #10: where conservation is not a missing value
 my_data <- msleep %>% 
   select(name, conservation, sleep_total) %>% 
   filter(!is.na(conservation))