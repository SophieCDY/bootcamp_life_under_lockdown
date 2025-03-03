library(dplyr)
library(readr)

bc_ld <- read_csv('../data/life-under-lockdown-wave2-extract.csv')

bc_ld %>%
  mutate(know_facebook = ordered(
    know_facebook,
    levels = c(
      'Nothing at all',
      'Not very much',
      'A fair amount',
      'A great deal'
    ))) %>%
  group_by(know_facebook) %>%
  summarise(n = n(), Beliefs = mean(beliefs))

