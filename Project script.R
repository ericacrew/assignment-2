library(tidyverse)
library(janitor)
air_data <-read_csv('listings.csv')
air_data_clean <- read_csv('listings.csv') %>% clean_names()
air_selected <- select(air_data_clean, 
                       neighbourhood_cleansed,neighbourhood_group_cleansed, price)
air_filtered <-filter(air_selected,neighbourhood_group_cleansed == "Brooklyn")
## multiplying price by 30 to more easily compart to rent costs 
air_mutatue<-mutate(air_filtered, monthly_price = price * 30)