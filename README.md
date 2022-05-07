# MechaCar_Statistical_Analysis

## Deliverable 1 - Linear Regression to Predict MPG


![Deliverable1](https://user-images.githubusercontent.com/95975772/167273075-818c2c03-01d7-4453-9fef-27bb643cfeea.png)


1) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

    A: There are two (2) variables in the multile linear regression equation that had a statistically significant level of variance: Vehicle length and ground clearance. The correlation coefficient was 2.6e-12 for vehicle length and 5.21e-08 indicating high levels of association between these variables and the dependent variable, all else held equal. 

2) Is the slope of the linear model considered to be zero? Why or why not?

    A:The slope of the linear model is not zero. The multi linear regression model shows that there are at least some variables in the equation (Vehicle length and ground clearance) that had a statistically significant association with the dependent variable. 

3) Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

    A:The R squared value of .7149 indicates that approximately 71% of variance on the dependent variable (MPG) can be explained by the provided multi-linear regression model. Similarly the estimate of the impact of vehicle length and ground clearance have high positive values suggesting that they have a significant impact on the outcome variable of MPG. These observations aside, it may be advisable to perform the model while controlling for additional factors, given that the other variables were not statistically significant in their association with MPG. 


## Summary Statistics on Suspension Coils

![Deliverable2](https://user-images.githubusercontent.com/95975772/167273414-25efc1c5-ea27-467c-b700-69c4c0b5f47f.png)


4) The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

    A:The aggregated summary statistics show that the average variance is approximately 62 PSI suggesting that the design meets the requirements. Breaking the data out by Manufacturing lots; however, we see that at the lot level of analysis, at least one (1) lot does not meet these requirements. Specifically, it shows that lot3 has a variance of approximately 170 PSI. This exceeds the requirements. As such, MechCar should work with Lots1 and 2 rather than 3.  


## T-Tests on Suspension Coils

#All Lots*.

![Deliverable3 1](https://user-images.githubusercontent.com/95975772/167273683-db19aaaa-8ea2-4b7f-bfb4-ae19d8a3f83d.png)

#Lot 1*.
![Deliverable3 2](https://user-images.githubusercontent.com/95975772/167273685-73cdd1d1-b66f-4e5f-9648-458bd56ba3a1.png)

#Lot 2*.
![Deliverable3 3](https://user-images.githubusercontent.com/95975772/167273687-95ef99ff-a8ae-41b7-b052-4ed22dc49f94.png)

#Lot 3*.
![Deliverable3 4](https://user-images.githubusercontent.com/95975772/167273692-ff0fb7aa-4af7-455f-935e-0b563d3d4aaf.png)


5) Are the lots in the dataset statistically different from the pop mean of 1500 lbs per square inch?

    A:T-test hypothesis tests were used to determine if the pop means varied for the lots in the dataset. T-Tests were rendered four (4) times: Once (1) at the aggregate level and three (3) times for each lot at the individual level. The analyses revealed the following: of the lots under review, only lot3 had a population mean that was statistically significant when conducting the T-Test. This indicates that we successfully rejected the null hypothesis of no difference between the average pop mean for lot3.  



## Study Design: MechaCar vs Competition.


6) What metric or metrics are you going to test?

    A: I would compose a new model on the association between MPG and other vehicle related factors. In particular, I may want to include measures engine characteristics (IE: type of enginge used, source of enginge, etc).
   
7) What is the null hypothesis or alternative hypothesis?

    A:THe null hypotheses of such a study would be that there is no difference between types of engines used in vehicles. The alternative hypothesis is that there is a statistically significant association between engine characteristics and MPG. 


8) What statistical test would you use to test the hypothesis? And why?

    A:If the engine characteristics being studied are linear and continuous, then multi linear regression may be used. It is most likely that case that the variables associated with engines would be categorical or nominal. As such, categorical tests such as ANOVA or Chi Square may need to be used in such a study. 

9) What data is needed to run the statistical test?

    A:There would need to be data on engine characteristics and a sufficiently large population size of each category of engine characteristic such that an adequate sample may be selected from the constructed pop. 
















