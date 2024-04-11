library(foreign)
library(plm)
Panel <- read.csv("C:/Users/rodge/Downloads/panel.csv")
ls(Panel)

fixed <- plm(y ~ x1, data=Panel, index=c("country", "year"), model="within")  #fixed model
random <- plm(y ~ x1, data=Panel, index=c("country", "year"), model="random")  #random model

phtest(fixed,random) #Hausman Test for Panel Models

# Fixed effects model
fixed_model <- plm(y ~ x1, data=Panel, index=c("country", "year"), model="within")
summary(fixed_model)

# n = # of groups/panels, T = # years, N = total # of observations

#You can change the model type using using the model argument #
# Fixed-> Within
# Random-> Random
#Pooling-> pooling
# First difference->fd
# between-> between

# The coefficient of x1 indicates how much Y changes overtime, on average per country, when X increases by one unit.
# The first p-value indicates whether the variable has a significant influence on your dependent variable (y).
#The second p-value indicates whether this model is OK. 

# Display fixed effects for each entity
fixef(fixed_model) #Extract fixed-effects estimates

# Random effects model
random <- plm(y ~ x1, data=Panel, index=c("country", "year"), model="random")
#n = # of groups/panels, T = # years, N = total # of observations
summary(random)

# Coefficients represent the average effect of predictors over the dependent variable when predictors 
# change across time and between countries by one unit.

# Compare with Simple OLS
ols <-lm(y ~ x1, data=Panel); summary(ols) 

# Test to check which  model fits better
pFtest(fixed, ols) #F Test for Individual and/or Time Effects
