#use the tidyverse to format data and save as an .rda
library(tidyverse)
murders <- read.csv("raw_data/murders.csv")
murders <- murders %>% mutate(region = factor(region), rate = total/population*10^5)
save(murders, file = "R_data/murders.rda")
