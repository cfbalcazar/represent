# represent

This repository contains the command ```dyadclust``` for Stata, which estimates effective regression weights as described in [Aronow and Samii (2016)]([https://www.cambridge.org/core/journals/political-analysis/article/abs/clusterrobust-variance-estimation-for-dyadic-data/D43E12BF35240100C7A4ED3C28912C95](https://onlinelibrary.wiley.com/doi/abs/10.1111/ajps.12185)), and perform diagonistics over these weights. 

Analyzing this regression weights can be greatly important because with conventional estimation practices for observational studies the estimate of a causal effect of a treatment may fail to characterize how effects operate in the population of interest. Causal effects estimated via multiple regression differentially weight each unit's contribution. The "effective sample" that regression uses to generate the estimate may bear little resemblance to the population of interest, and the results may be non-representative in a manner similar to what quasi-experimental methods or experiments with convenience samples produce. 

This program estimates the ``multiple regression weights'', and provides diagnostics using distributional statistics, Lorenz curves, and cloropeth maps. These diagnostics allow one to study the effective sample, and help to determine if a group of observations (for example a country), is driving the effect of the treatment. 

To install the package and update it the following command can be used in Stata:
```
net install dyadclust, from (https://raw.githubusercontent.com/cfbalcazar/dyadclust/main/dyadclust/) replace force all
```

Improvements to the code are welcomed.

Keywords: effective weights ; effective regression weights

