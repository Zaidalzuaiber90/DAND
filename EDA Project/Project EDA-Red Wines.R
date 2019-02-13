Red Wine Quality by ZAID SAAD ALZUAIBER
========================================================
  
#introduction:
  This tidy data set contains 1,599 red wines with 11 variables on the chemical 
properties of the wine. At least 3 wine experts rated the quality of each wine, 
providing a rating between 0 (very bad) and 10 (very excellent).



```{r echo=FALSE, message=FALSE, warning=FALSE, packages}
# Load all of the packages that you end up using in your analysis in this code
# chunk.

# Notice that the parameter "echo" was set to FALSE for this code chunk. This
# prevents the code from displaying in the knitted HTML output. You should set
# echo=FALSE for all code chunks in your file, unless it makes sense for your
# report to show the code that generated a particular plot.

# The other parameters for "message" and "warning" should also be set to FALSE
# for other code chunks once you have verified that each plot comes out as you
# want it to. This will clean up the flow of your report.

library(gridExtra) 
library(ggplot2)
library(knitr)
library(dplyr)

```

```{r echo=FALSE, Load_the_Data}
# Load the Data
pf <- read.csv('wineQualityReds.csv')

```



# Univariate Plots Section

str(pf)

names(pf)

summary(pf)

```{r}


ggplot(aes(x=quality), data = pf,)+
  geom_bar( fill = "#993366") +
  xlab("Quality") 

summary(pf$quality)

we notice the red win (qualty) is normaly distrbuted and mean  around 5

```{r}


ggplot(aes(x=alcohol), data = pf)+
  geom_bar( fill = "#993366") +
  xlab("alcohol") 

summary(pf$alcohol)

we notice the red win (alcohol) is a right skewed and mean  around 10


```{r}


ggplot(aes(x=total.sulfur.dioxide), data = pf,)+
  geom_bar( fill = "#993366") +
  xlab("total.sulfur.dioxide") 

summary(pf$total.sulfur.dioxide)

we notice the red win (total.sulfur.dioxide) is a right skewed and mean  around 46


```{r}


ggplot(aes(x=fixed.acidity), data = pf)+
  geom_bar( fill = "#993366") +
  xlab("fixed.acidity") 

summary(pf$fixed.acidity)

we notice the red win (fixed.acidity) is a right skewed and mean  around 8 

```{r}


ggplot(aes(x=volatile.acidity), data = pf)+
  geom_bar( fill = "#993366") +
  xlab("volatile.acidity") 

summary(pf$volatile.acidity)

we notice the red win (volatile.acidity) is a right skewed and mean  around 0.25 and
there is a few outlier

```{r}


ggplot(aes(x=citric.acid), data = pf)+
  geom_bar( fill = "#993366") +
  xlab("citric.acid") 

summary(pf$citric.acid)

we notice the red win (citric.acid) there is one oulier is "1" and mean  around 0.27  

```{r}


ggplot(aes(x=residual.sugar), data = pf)+
  geom_bar( fill = "#993366") +
  xlab("residual.sugar") 

summary(pf$residual.sugar)

we notice the red win (residual.sugar) is a right skewed  and mean  around 2.53 

```{r}


ggplot(aes(x=chlorides), data = pf)+
  geom_bar( fill = "#993366") +
  xlab("chlorides") 

summary(pf$chlorides)

we notice the red win (chlorides) there is many outliers  and mean  around 0.08

```{r}


ggplot(aes(x=density), data = pf)+
  geom_bar( fill = "#993366") +
  xlab("density") 

summary(pf$density)

we notice the red win (density) normal distrubtions  and mean  around 0.99


```{r}


ggplot(aes(x=sulphates), data = pf)+
  geom_bar( fill = "#993366") +
  xlab("sulphates") 

summary(pf$sulphates)

we notice the red win (sulphates) is a right skewed   and mean  around 0.65




```{r echo=FALSE, Univariate_Plots}

```

names(pf)


# Univariate Analysis

> **Tip**: Now that you've completed your univariate explorations, it's time to
reflect on and summarize what you've found. Use the questions below to help you
gather your observations and add your own if you have other thoughts!

### What is the structure of your dataset?
there are 1599 wines and 13 variables  ("X","fixed.acidity","volatile.acidity","citric.acid"         
"residual.sugar","chlorides","free.sulfur.dioxide","total.sulfur.dioxide"
"density","pH","sulphates","alcohol","quality" )
### What is/are the main feature(s) of interest in your dataset?
The main feature is "quality",because it will help me to decide which product can we predict it's better
and we campare with other factors
### What other features in the dataset do you think will help support your \
investigation into your feature(s) of interest?
i think  density and alcohol 
### Did you create any new variables from existing variables in the dataset?
No
### Of the features you investigated, were there any unusual distributions? \
Did you perform any operations on the data to tidy, adjust, or change the form 
of the data? If so, why did you do this?
No I didin't' the data are tidy

### Bivariate Plots Section

```{r}


ggplot(aes(x= total.sulfur.dioxide, y = free.sulfur.dioxide) , data = pf) +
  geom_point(alpha = 0.3, size = 1) +
  geom_smooth(method = "lm", se = FALSE,size=1) +
  scale_color_brewer(type='seq')


ggplot(aes(x= alcohol, y = quality) , data = pf) +
  geom_point(alpha = 0.3, size = 1) +
  geom_smooth(method = "lm", se = FALSE,size=1) +
  scale_color_brewer(type='seq')

ggplot(aes(x= quality, y = density) , data = pf) +
  geom_point(alpha = 0.3, size = 1) +
  geom_smooth(method = "lm", se = FALSE,size=1) +
  scale_color_brewer(type='seq')


ggplot(aes(x= pH, y = fixed.acidity) , data = pf) +
  geom_point(alpha = 0.3, size = 1) +
  geom_smooth(method = "lm", se = FALSE,size=1) +
  scale_color_brewer(type='seq')


As four graphs above it shows the correletion between 2 variables which we compared.
I choosed the chemical features that might be has a significant correlation with wine quality.




```{r echo=FALSE, Bivariate_Plots}



# Bivariate Analysis

> **Tip**: As before, summarize what you found in your bivariate explorations
here. Use the questions below to guide your discussion.

### Talk about some of the relationships you observed in this part of the \
investigation. How did the feature(s) of interest vary with other features in \
the dataset?
as the graphs above we saw many correletion between varieables like ( fixed.acidity and ph ) around 3,3

  
### Did you observe any interesting relationships between the other features \
  (not the main feature(s) of interest)?
YES, we found relation between( alcohol and quality) the quality will be good once the quantity of
alcohol has more
### What was the strongest relationship you found?
alcohol and quality as we mentioned earlier.  
  
  # Multivariate Plots Section
  


```{r echo=FALSE, Multivariate_Plots}

```
ggplot(aes(x = alcohol, y = citric.acid, color = factor(quality)), data = pf) +
  geom_point(alpha = 0.8, size = 2) +
  geom_smooth(method = "lm", se = FALSE,size=1)  +
  theme_dark() +
  scale_color_brewer(type='seq')

as we can see there is relation between quality and alcohol and citric.acid 
once alcohol increased it shows the quality increased 

ggplot(pf, aes(x = sulphates, y = alcohol, colour=factor(quality))) + 
  geom_point(alpha = 0.8, size = 2) +
  geom_smooth(method = "lm", se = FALSE,size=1)  +
  theme_dark() +
  scale_color_brewer(type='seq')

# Multivariate Analysis

### Talk about some of the relationships you observed in this part of the \
investigation. Were there features that strengthened each other in terms of \
looking at your feature(s) of interest?
as we mentioned in graph above when alcohol got higher the quality will increased

### Were there any interesting or surprising interactions between features?

### OPTIONAL: Did you create any models with your dataset? Discuss the \
strengths and limitations of your model.
No

------

# Final Plots and Summary


### Plot One
```{r echo=FALSE, Plot_One}

```
ggplot(aes(x=quality), data = pf)+
  geom_bar( fill = "#993366") +
  xlab("quality") 


### Description One
the graph shows the quality of wine and we can see almost wines have quality around 5

### Plot Two
```{r echo=FALSE, Plot_Two}

```
ggplot(aes(x= alcohol, y = quality) , data = pf) +
  geom_point(alpha = 0.3, size = 1) +
  geom_smooth(method = "lm", se = FALSE,size=1) +
  scale_color_brewer(type='seq')

### Description Two
as we see the correlation between( alcohol and quality) are positve

### Plot Three
```{r echo=FALSE, Plot_Three}

```
ggplot(aes(x = pH, y = alcohol, color = factor(quality)), data = pf) +
  geom_point(alpha = 0.8, size = 2) +
  geom_smooth(method = "lm", se = FALSE,size=1)  +
  theme_dark() +
  scale_color_brewer(type='seq')

### Description Three
High quality wines when higher alcohol and high pH

------
  
  # Reflection
  
The red wines dataset contains 1599 observations with 13 variables.
After analyzing and exploring data such as what I expected the alcohol 
percentage correlated to quality, but I was expect the quality will be 
good in the higher acidity 


