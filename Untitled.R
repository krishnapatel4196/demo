library(tidyverse)
library(palmerpenguins)
library(ggthemes)
library(nycflights13)

flights
glimpse(flights)
print(flights, width = Inf)

flights |>
  filter(dest == "IAH") |> 
  group_by(year, month, day) |> 
  summarize(
    arr_delay = mean(arr_delay, na.rm = TRUE)
  )

flights |> 
  filter(month %in% c(1, 2))


#exercises 3.2.5
#Q1 : In a single pipeline for each condition, find all flights that meet the condition
#Had an arrival delay of two or more hours
#Flew to Houston (IAH or HOU)
#Were operated by United, American, or Delta
#Departed in summer (July, August, and September)
#Arrived more than two hours late but didn’t leave late
#Look at this: Were delayed by at least an hour, but made up over 30 minutes in flight(flight departure delay by 30 min or more but arraival time is same)

flights |> 
  filter(arr_delay >= 120) |> 
  filter(dest == "IAH" | dest == "HOU") |> 
  filter(carrier == "AA"|carrier =="DL"|carrier =="UN") |> 
  filter(month == 7 | month == 8 | month == 9) |>
  filter(dep_delay <= 0) 
  
data |> arrange()
