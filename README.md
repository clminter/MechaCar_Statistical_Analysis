# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
    Call:
    lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
        ground_clearance + AWD, data = input)

    Residuals:
         Min       1Q   Median       3Q      Max 
    -19.4701  -4.4994  -0.0692   5.4433  18.5849 

    Coefficients:
                       Estimate Std. Error t value Pr(>|t|)    
    (Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
    vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
    vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
    spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
    ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
    AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

    Residual standard error: 8.774 on 44 degrees of freedom
    Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
    F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11
    
1. The following variables provide a non-random amount of variance to the mpg values and should be noted as to their significant effect on mpg:
    - vehicle_length
    - ground_clearance

2. Due to the very low overall p-value the slope of the linear model is not 0.  This means the X variables have an effect on Y(mpg).
3. The R-squared value for this model is 0.7149. This model is accurate 71% of the time; reasonalby accurate at predicting miles per gallon.

## Summary Statistics on Suspension Coils

#### Total Summary Table of all lots of Suspension Coils

![image](https://user-images.githubusercontent.com/81878169/129464330-7d7b463e-90a6-486a-9233-284bd010fca1.png)

This table indicates that the total of all lots is within the specified 100PSI of maximum variance.


#### Total Summary Table of Suspension Coils by Lot

![image](https://user-images.githubusercontent.com/81878169/129464338-0386ccf2-80e7-4e3b-8aa5-d8c57efd600d.png)

This table indicates that, looking closer at the individual lots, Lot 3 is significantly out of spec by over 70PSI. This anomaly should be investigated further and the lot rejected.

## T-Tests on Suspension Coils

#### All Lots Test Summary

    data:  Susp_table$PSI
    t = -1.8931, df = 149, p-value = 0.06028
    alternative hypothesis: true mean is not equal to 1500
    95 percent confidence interval:
     1497.507 1500.053
    sample estimates:
    mean of x 
      1498.78
      
 #### Lot 1 Test Summary

    data:  Lot1$PSI
    t = 0, df = 49, p-value = 1
    alternative hypothesis: true mean is not equal to 1500
    95 percent confidence interval:
     1499.719 1500.281
    sample estimates:
    mean of x 
         1500
         
#### Lot 2 Test Summary

    data:  Lot2$PSI
    t = 0.51745, df = 49, p-value = 0.6072
    alternative hypothesis: true mean is not equal to 1500
    95 percent confidence interval:
     1499.423 1500.977
    sample estimates:
    mean of x 
       1500.2
       
 #### Lot 3 Test Summary

    data:  Lot3$PSI
    t = -2.0916, df = 49, p-value = 0.04168
    alternative hypothesis: true mean is not equal to 1500
    95 percent confidence interval:
     1492.431 1499.849
    sample estimates:
    mean of x 
      1496.14
