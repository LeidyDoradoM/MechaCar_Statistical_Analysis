library(dplyr) # for %>%

MechaCar_df <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Multiple linear regression model
multi_lm = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df) 
#generate summary statistics
summary(multi_lm )

