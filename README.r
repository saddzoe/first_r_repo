# first_r_repo excercise is from codecademy I did

library(readr)
library(dplyr)

orders <- read_csv("orders.csv")

head(orders)

diff_from_mean <- orders %>%
  group_by(shoe_type) %>%
  mutate(diff_from_shoe_type_mean = price - mean(price, na.rm = TRUE))

diff_from_mean
