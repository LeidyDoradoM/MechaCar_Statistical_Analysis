library(dplyr) # for %>%
library("tidyverse")

## ---- Deliverable 1 -------- ##
# read csv file
MechaCar <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#Multiple linear regression model
multi_lm = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar) 
#generate summary statistics
summary(multi_lm )

## ------ Deliverable 2 -------##
# read csv file
suspCoil <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors=F)
# create the summary dataframe
total_summary <- suspCoil %>% summarise(mean = mean(PSI), median = median(PSI), variance = var(PSI) , SD = sd(PSI))
#---grouping by manufacturing lot and summarising
lot_summary <- suspCoil %>% group_by(Manufacturing_Lot) %>% 
  summarise(mean = mean(PSI), median = median(PSI), variance = var(PSI) , SD = sd(PSI))

##--- Deliverable 3 --- ###
# t.test across all manufacturing Lot
t.test(suspCoil$PSI, mu=1500)
# t.test for each manufacturing lot
t.test(subset(suspCoil, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(suspCoil, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(suspCoil, Manufacturing_Lot == "Lot3")$PSI, mu=1500)

