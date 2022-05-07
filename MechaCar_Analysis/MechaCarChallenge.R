

#creating deliverable Number 1********************.

#loading libraries*.

library(tidyverse)
library(jsonlite)
library(dplyr)


install.packages("tidyverse")
install.packages("jsonlite")
install.packages("dplyr")


#reading files***.

?read.csv()

#Key functions are file; header; sep; check.names; and stringsasfactors
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#getting regression completed**.


#2 arguments required in R:
#formula - states the formula for R to interpret different variables and factors*.
#data - the name of the data frame being used

#passing all six variables into the arguments***.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)


#perform summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar))

#Deliverable 2********************************.

#show summary table of suspension coil PSI doing the following:
#The suspension coil’s PSI continuous variable across all manufacturing lots
#The following PSI metrics for each lot: mean, median, variance, and standard deviation.

#step 1 - getting csv file imported into R*.
Suspension <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F)

#step 2 - create Summarize_Suspension data set files - on PSI column*.

?summarise()

#NOTE: couple errors in first iteration- it seems SD must be lowercase in function; variance must be var**.

Summarize_Suspension <- Suspension %>% summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
Summarize_Suspension
#step 3 - creating a dataframe using group_by() and summarize() functions to gruop each manu lot by values**.

lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary


#Deliverable 3********************************.

#goal is to execute T.Tests*.

#1 - compare all manufacturing lots against Mean PSI of pop*.
# 3 t-tests to compare each mean lot against mean PSI of pop
#summarize results**.
#total of 4-tests*.

#EXAMPLE T TEST FROM MODULE**.
#t.test(log10(sample_table$Miles_Driven)mu=XXX)

?t.test()
?subset()
#main T - test*.
t.test(Suspension$PSI,mu = 1500)

#t-test subsets***.

#lot1
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# lot2
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# Lot3
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)




#deliverable 4*************

#design and express a readme analysis study cmoparing Mechaacar to others***.




