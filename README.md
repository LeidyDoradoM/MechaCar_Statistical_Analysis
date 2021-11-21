# MechaCar Statistical Analysis

**MechaCar** is the newest prototype of the company AutosRUs. This prototype is suffering from production troubles that are blocking the manufacturing team’s progress. This data analysis is focused on reviewing the production data to gather insights that may help the manufacturing team.

## Linear Regression to Predict MPG 

For this part of the analysis, we use the dataset in [MechaCar_mpg.csv](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Resources/MechaCar_mpg.csv) file that contains Miles per Gallon (mpg) test results for 50 **MechaCars** prototypes. The prototypes were produced using multiple design specifications to identify ideal vehicle performance. A linear model is designed and coded in `R` to predict the mpg of the prototypes using several variables: vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. Figure 1 shows the linear model used (R bult-in function ```lm```) and its output:

![Deliverable1](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Images/MechaCar_deliv1.png)
Figure 1. Linear Regression in R for estimating *mpg* of the MechaCar prototypes.

- Coefficients that provide a non-random amount of variance to the **mpg** estimation are the *vehicle_length* and *ground_clearance* (indicated by ***).  Their  *p-values* (column ```Pr(>|t|)```) are smaller than 0.05, which means they are statistically significant and contribute to the model.  The intercept is also statistically significant, which means there are other variables, not included in this analysis, that could impact on the *mpg*.

- The slope in a linear model represents the relationship between the variable being estimated and the other(s) variables, i.e., if there are variables contributing to the estimation of a specific one. To check if the slope of our model is zero or not, we need to look at the *Performance Measurements* in the bottom of Figure 1. The ```F-statistic``` and specifically the *p-value:* 5.35e-11 is very small (<0.05) indicating that the relationship between our variables and **mpg** is subject to more than random chance and consequentely the slope could not be zero.

- As it was established before, the intercept of our model is statistically significant implying there are factors that have not been taking into consideration in this linear model. In addition, the ```Multiple R-squared``` value of 0.7149 shows us that although our model predicts **mpg** of MechaCar prototypes with some efficacy, it could be improved.

## Summary Statistics on Suspension Coils

The second part of this analysis considers the estimation of statistics such as the mean, median, variance and standard deviation for the data in [Suspension_Coil.csv](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Resources/Suspension_Coil.csv). This dataset contains the results from multiple production lots of MechaCar prototypes. In this dataset, the weight capacities of multiple suspension coils (PSI) were tested to determine if the manufacturing process is consistent across production lots. Figure 2 and 3 show these statistics in two different scenarios: Statistics for PSI computed across all the production lots, and statistics computed for each of the production lots:

![Deliverable2-1](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Images/total_summary.png)

Figure 2. Statistics for all Manufacturing Lots.

![Deliverable2-2](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Images/lot_summary.png)

Figure 3. Statistics for each Manufaturing Lot individually.

- Considering that the design specifications for the **MechaCar** suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (psi), we can conclude that across al the manufacturing lots (figure 2) the manufacturing data meet the design specifications (```variance ~ 62```), but for the specific cases (figure 3), the variance for the **Lot3** exceeds the 100 psi.

## T-tests on Suspension Coils

In our final analysis we will determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 psi.

### T-test on PSI across all manufacturing lots:

![Deliverable3-1](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Images/t-test_allManufacturing.png)

- The ```p-value``` is greather than the limit value of 0.05, which means the mean of the psi across all the manufacturing lots and the population mean are not statistically different.

### T-test on PSI for Manufacturing Lot 1:

![Deliverable3-2](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Images/t-test_ManufacturingLot1.png)

- The ```p-value``` in this case is greather than the limit value of 0.05, which means the mean of the psi for manufacturing lot 1 and the population mean are not statistically different.

### T-test on PSI for Manufacturing Lot 2:

![Deliverable3-3](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Images/t-test_ManufacturingLot2.png)

- Again for manufacuring Lot 2, the ```p-value``` is greather than 0.05, which means the mean of the psi for manufacturing lot 2 and the population mean are not statistically different. 

### T-test on PSI for Manufacturing Lot 3:

![Deliverable3-4](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Images/t-test_ManufacturingLot3.png)

- In this case the psi mean for Lot 3 is slightly statistically different from the mean population, since the ```p-value``` is barely smaller than 0.05. We will probably need to evaluate this manufacturing lot in more detail.

## Study Design: MechaCar vs Competition

Continuing with our analysis of the **MechaCar** production data and to see how these prototypes perform against the competition. It could be interesting to consider an additional data analysis where factors like traffic and road conditions are taking into account, since they can affect the estimation of **mpg**.  In our analysis we will have the **highway mpg**  and the **city mpg**.  We will need as well information about the car transmission: mechanic or authomatic, so we can study how the kind of transmission affects the city and highway fuel efficiency.  

1. In our analysis, we will test the **highway mpg** and/or the **city mpg** against the car transmission to see if the manual or authomatic transmission has an impact in the amount of fuel the car consumes in each scenario individually.

2. Our null hypothesis is: The variance of fuel use in the city/or the highway is equal for the cars with authomatic and manual transmissions.

3. To test our null hypothesis we will use the two sample t-test. In fact we need to run this t-test twice, one for the **city mpg** and the other for the **highway mpg**.  In each test, we will need to determine if our null hypthesis can be rejected or not, based on the ```p-value```. For example: if our ```p-value``` is smaller than 0.05, the null hypotheis is rejected and we can conclude that there is a statistically significant relationship between whether the car has an automatic or manual transmision and the amount of fuel consumed while driving in a city/highway scenario.

4. In our analysis, we would need the following data:
    - **City mpg** : It can be estimated as the average a car will get while driving on an open stretch of road without stopping or starting, typically at a higher speed.
    - **Highway mpg**:  It can be estimated as the average a car will get while driving on a road with city conditions, with stopping and starting at lower speeds.
    - **Car transmision**: It is a categorical data,a dichotomous variable: 0 - manual transmission, 1 - authomatic transmission.