# MechaCar Statistical Analysis

**MechaCar** is the newest prototype of the company AutosRUs. This prototype is suffering from production troubles that are blocking the manufacturing team’s progress. This data analysis is focused on reviewing the production data to gather insights that may help the manufacturing team.

## Linear Regression to Predict MPG 

For this part of the analysis, we use the dataset in [MechaCar_mpg.csv](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Resources/MechaCar_mpg.csv) file that contains Miles per Gallon (mpg) test results for 50 **MechaCars** prototypes. The prototypes were produced using multiple design specifications to identify ideal vehicle performance. A linear model is designed and coded in `R` to predict the mpg of the prototypes using several variables: vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance. Figure 1 shows the linear model used in the R bult-in function ```lm```  and its output:

![Deliverable1](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Images/MechaCar_deliv1.png)
Figure 1. Linear Regression in R for estimating *mpg* of the MechaCar prototypes.

- Coefficients that provide a non-random amount of variance to the **mpg** estimation are the *vehicle_length* and *ground_clearance* (indicated by ***).  Their  p-values (column ```Pr(>|t|)```) are smaller than 0.05, which means they are statistically significant and contribute to the model.  The intercept is also statistically significant, which means there are other variables, not included in this analysis, that could impact on the *mpg*.

- The slope in a linear model represents the relationship between the variable being estimated and the other/others variables, i.e., if there are variables contributing to the estimation of a specific one. In this case, 
Is the slope of the linear model considered to be zero? Why or why not?

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?



## Summary Statistics on Suspension Coils

The second part of this analysis considers 


![Deliverable2-1](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Images/total_summary.png)

![Deliverable2-2](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Images/lot_summary.png)

- Does the current manufacturing data meet the design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-tests on Suspension Coils

![Deliverable3-1](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Images/t-test_allManufacturing.png)

![Deliverable3-2](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Images/t-test_ManufacturingLot1.png)
![Deliverable3-3](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Images/t-test_ManufacturingLot2.png)
![Deliverable3-4](https://raw.githubusercontent.com/LeidyDoradoM/MechaCar_Statistical_Analysis/main/Images/t-test_ManufacturingLot3.png)