install.packages("tidyverse")


install.packages("dplyr")
library(dplyr)
MechaMpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

input<-MechaMpg_table[,c('vehicle_length','vehicle_weight','spoiler_angle','ground_clearance','AWD','mpg')]
print(head(input))

# Create the relationship model.
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=input) #generate multiple linear regression model

# Show the model.
print(model)

summary(model)


Susp_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#PSI column summary
total_summary <- Susp_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#create lot summary and group lot by summary PSI data
lot_summary <- Susp_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# t test all cars PSI with a mean of 1500
t.test(x=Susp_table$PSI, mu=1500)

# Create subset for lot 1 cars
Lot1 <- subset(Susp_table, Manufacturing_Lot=='Lot1')

# t test on lot 1 cars PSI with a mean of 1500
t.test(x=Lot1$PSI, mu=1500)

# Create subset for lot 2 cars
Lot2 <- subset(Susp_table, Manufacturing_Lot=='Lot2')

# t test on lot 2 cars PSI with a mean of 1500
t.test(x=Lot2$PSI, mu=1500)

# Create subset for lot 3 cars
Lot3 <- subset(Susp_table, Manufacturing_Lot=='Lot3') 

# t test on lot 3 cars PSI with a mean of 1500
t.test(x=Lot3$PSI, mu=1500) 


